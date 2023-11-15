(defrule p1
  ?ifYesNoChoice1 <- (start)
  =>
  (printout t crlf crlf "Does the aircraft have operator identification on the body? (yes/no) " crlf "Your answer: ")
  (assert (aircraft have operator identification (read)))
  (retract ?ifYesNoChoice1))

(defrule rule7
  (aircraft have operator identification no)
  =>
  (printout t crlf "This aircraft is not a commercial aircraft!" crlf crlf))

(defrule p3
  (aircraft have operator identification yes)
  =>
  (printout t crlf crlf "Does the aircraft have a rounded Nose shape and straight line cockpit window? (yes/no) " crlf "Your answer: ")
  (assert (aircraft has rounded Nose shape and straight line cockpit window (read))))

(defrule rule6
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window no)
  =>
  (printout t crlf "This aircraft is Manufactured by Boeing company!" crlf crlf))

(defrule p4
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  =>
  (printout t crlf crlf "Does the aircraft have blended winglet design? (yes/no) " crlf "Your answer: ")
  (assert (aircraft has blended winglet design (read))))

(defrule p5
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design yes)
  =>
  (printout t crlf crlf "Does the aircraft have 2 Overwing exit doors? (yes/no) " crlf "Your answer: ")
  (assert (aircraft have 2 Overwing exit doors (read))))

(defrule rule5
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design yes)
  (aircraft have 2 Overwing exit doors yes)
  =>
  (printout t crlf "The aircraft belongs to airbus A320 series!" crlf crlf))

(defrule rule4
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design yes)
  (aircraft have 2 Overwing exit doors no)
  =>
  (printout t crlf "The aircraft belongs to airbus A330 series!" crlf crlf))

(defrule p6
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design no)
  =>
  (printout t crlf crlf "Does the aircraft have 2 Overwing exit doors? (yes/no) " crlf "Your answer: ")
  (assert (aircraft have 2 Overwing exit doors (read))))

(defrule rule3
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design no)
  (aircraft have 2 Overwing exit doors yes)
  =>
  (printout t crlf "The aircraft belongs to airbus A321 series!" crlf crlf))

(defrule p7
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design no)
  (aircraft have 2 Overwing exit doors no)
  =>
  (printout t crlf crlf "Does the aircraft have 4 Overwing exit doors? (yes/no) " crlf "Your answer: ")
  (assert (aircraft have 4 Overwing exit doors (read))))

(defrule rule2
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design no)
  (aircraft have 2 Overwing exit doors no)
  (aircraft have 4 Overwing exit doors yes)
  =>
  (printout t crlf "The aircraft belongs to airbus A350 series!" crlf crlf))

(defrule rule1
  (aircraft have operator identification yes)
  (aircraft has rounded Nose shape and straight line cockpit window yes)
  (aircraft has blended winglet design no)
  (aircraft have 2 Overwing exit doors no)
  (aircraft have 4 Overwing exit doors no)
  =>
  (printout t crlf "The aircraft belongs to airbus A380 series!" crlf crlf))

(deffacts startup (start))
