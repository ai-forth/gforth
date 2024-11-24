\ Forth output paging add-on (like more(1))

\ Authors: Anton Ertl, Bernd Paysan
\ Copyright (C) 1996,2000,2003,2007,2016,2019,2021 Free Software Foundation, Inc.

\ This file is part of Gforth.

\ Gforth is free software; you can redistribute it and/or
\ modify it under the terms of the GNU General Public License
\ as published by the Free Software Foundation, either version 3
\ of the License, or (at your option) any later version.

\ This program is distributed in the hope that it will be useful,
\ but WITHOUT ANY WARRANTY; without even the implied warranty of
\ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
\ GNU General Public License for more details.

\ You should have received a copy of the GNU General Public License
\ along with this program. If not, see http://www.gnu.org/licenses/.


\ This add-on is for those poor souls whose terminals cannot scroll
\ back but who want to read the output of 'words' at their leisure.

\ currently this is very primitive: it just counts newlines, and only
\ allows continuing for another page (and of course, terminating
\ processing by sending a signal (^C))

\ Some things to do:
\ allow continuing for one line (Enter)
\ count lines produced by wraparound (note tabs and backspaces)
\ allow continuing silently
\ fancy features like searching, scrollback etc.

\ one more-or-less simple way to achieve all this is to
\ popen("less","w") and output there. Before getting the next `key`,
\ we would perform a pclose. This idea due to Marcel Hendrix.

variable last-#lines 0 last-#lines !

:noname ( -- )
    -1 last-#lines ! branch [ action-of prompt >body , ] ; is prompt
:noname ( -- )
    defers bootmessage -1 last-#lines ! ; is bootmessage

: (more-emit) ( c -- )
    dup defers emit
    #lf =
    if
	1 last-#lines +!
	last-#lines @ rows >=
	if
	    [: status-color ." ... more?" ;] execute-theme-color
	    ekey 1 last-#lines !
	    10 backspaces 10 spaces 10 backspaces
	    #esc = IF  1 cursor-up -1 throw  THEN
	endif
    endif ;

: (more-type) ( c-addr u -- )
    bounds
    ?DO
	I c@ emit
    LOOP ;

derived-output: more-out

' (more-emit) is emit
' (more-type) is type
