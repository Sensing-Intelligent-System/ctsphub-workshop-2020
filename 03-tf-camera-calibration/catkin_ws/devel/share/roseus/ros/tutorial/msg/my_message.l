;; Auto-generated. Do not edit!


(when (boundp 'tutorial::my_message)
  (if (not (find-package "TUTORIAL"))
    (make-package "TUTORIAL"))
  (shadow 'my_message (find-package "TUTORIAL")))
(unless (find-package "TUTORIAL::MY_MESSAGE")
  (make-package "TUTORIAL::MY_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude my_message.msg.html


(defclass tutorial::my_message
  :super ros::object
  :slots (_temp _pressure ))

(defmethod tutorial::my_message
  (:init
   (&key
    ((:temp __temp) 0.0)
    ((:pressure __pressure) 0.0)
    )
   (send-super :init)
   (setq _temp (float __temp))
   (setq _pressure (float __pressure))
   self)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:serialization-length
   ()
   (+
    ;; float64 _temp
    8
    ;; float64 _pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _temp
     (setq _temp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tutorial::my_message :md5sum-) "66c861d7d072cf2ed79d84c9e166648a")
(setf (get tutorial::my_message :datatype-) "tutorial/my_message")
(setf (get tutorial::my_message :definition-)
      "float64 temp
float64 pressure

")



(provide :tutorial/my_message "66c861d7d072cf2ed79d84c9e166648a")


