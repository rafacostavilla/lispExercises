#| 
This game consists in try to guess which number the user is thinking about
To do that, the user should type (guess-my-number), if the computer doesn't
find the correct answer, the user should inform if it's (smaller) or (bigger).
If the computer correctly guess, the user should type (start-again), if he want
to continue playing 
|#

(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number()
  (ash (+ *small* *big*) -1)
  )

(defun smaller()
  (setf *big* (1- (guess-my-number) ) )
  (guess-my-number)
  )


(defun bigger()
  (setf *small* (1+ (guess-my-number) ) )
  (guess-my-number)
  )

(defun start-again ()
  (setf *small* 1)
  (setf *big* 100)
  (guess-my-number)
  )


