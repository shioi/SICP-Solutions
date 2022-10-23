;;This will lead to infinite recursion.
;;As the interpreter evaluates it in applicative-order, the
;;else clause has to be evaluated. This will call sqrt-iter repetively, which leads
;;to infinite recursion and finally a stack overflow.
