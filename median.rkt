;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname median) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Denis Moyseyev
; cs4250 hw#5
; Data 05/04/2017


; This recursively addes up all the numbers in the list.
(define (sum l)
  (if (empty? l) 0
      (+ (car l) (sum (cdr l))))
  )


; This is the median function. It the list is has an odd amount of elements it easy
;but if it has an even number of elements it is a bit harder. 
(define (median l)
;This will automantically take the list into a conditional statment.
  (if (odd? (length l))

      ;This will check if the lenght of the list is odd. If it is then it will sort the list and take the middle element.
      (print(list-ref (sort l <) (round (/ (- (length l) 1) 2))))

      ;Checks if the list is null if it is then it will return an error statement.
      (if (null? l)
      "No median because its an empty list"

      ;else this goes into a series of if statements. Checks if the element in the list selected is close to the average after you round the average. 
      (if (<= (round(/ (sum l) (length l))) (list-ref (sort l <) (floor (/ (- (length l) 1) 2))))

      ;If the previous statement is true then it will execute the lowerbound.     
      (print(list-ref (sort l <) (floor (/ (- (length l) 2) 2))))

      ;This is the else part of the if statement. This will chose the upperbound 
      (print(list-ref (sort l <) (ceiling (/ (- (length l) 1) 2))))  
          
  ))))

        
    