(define (reverse-general L)
  (cond ((null? L)'()) ;if L is null return empty list
       ((list? L) ;check if L is a list
        (append (reverse-general (cdr L))
                (list (reverse-general (car L))) 
         );take very last value of list to append, then append the new last item 
        )
       (else (not (list? L)) L); return L if one last item left in list
  )
 )


(define (sum-up-numbers-simple L)
 (cond
   ((null? L) 0) ;if list is null return 0
   ((list? (car L)) (sum-up-numbers-simple (cdr L))); if first item is a list ignore, and recurse the rest of the list
   ((number? (car L)) (+ (car L) (sum-up-numbers-simple(cdr L)))); if first item is a number, concatenate number; then recurse remaining list
   (else (sum-up-numbers-simple (cdr L))); if else, exclude first item and recurse
  )
 )


(define (sum-up-numbers-general L)
 (cond
   ((null? L) 0) ;if list is null return 0
   ((list? (car L)) (sum-up-numbers-general (car L))) ;focus on item in inner list
   ((number? (car L)) (+ (car L) (sum-up-numbers-general(cdr L))))
   (else (sum-up-numbers-simple (cdr L)))
  )
 )       

