(define (reverse-general L)
  (cond ((null? L)'())
        ((list? L)
         (append (reverse-general (cdr L))
                 )
         )
        )
 )



  
  