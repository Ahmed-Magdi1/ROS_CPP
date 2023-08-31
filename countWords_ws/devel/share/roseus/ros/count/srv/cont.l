;; Auto-generated. Do not edit!


(when (boundp 'count::cont)
  (if (not (find-package "COUNT"))
    (make-package "COUNT"))
  (shadow 'cont (find-package "COUNT")))
(unless (find-package "COUNT::CONT")
  (make-package "COUNT::CONT"))
(unless (find-package "COUNT::CONTREQUEST")
  (make-package "COUNT::CONTREQUEST"))
(unless (find-package "COUNT::CONTRESPONSE")
  (make-package "COUNT::CONTRESPONSE"))

(in-package "ROS")





(defclass count::contRequest
  :super ros::object
  :slots (_words ))

(defmethod count::contRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass count::contResponse
  :super ros::object
  :slots (_count ))

(defmethod count::contResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass count::cont
  :super ros::object
  :slots ())

(setf (get count::cont :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get count::cont :datatype-) "count/cont")
(setf (get count::cont :request) count::contRequest)
(setf (get count::cont :response) count::contResponse)

(defmethod count::contRequest
  (:response () (instance count::contResponse :init)))

(setf (get count::contRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get count::contRequest :datatype-) "count/contRequest")
(setf (get count::contRequest :definition-)
      "string words
---
uint32 count
")

(setf (get count::contResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get count::contResponse :datatype-) "count/contResponse")
(setf (get count::contResponse :definition-)
      "string words
---
uint32 count
")



(provide :count/cont "58903d21a3264f3408d79ba79e9f7c7e")


