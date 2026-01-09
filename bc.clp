(deftemplate galleta
  0 8
 (
    (poco_crudas (4 1) (6 0.5) (7 0))
    (medio_hechas (3 0) (5 1) (6 1) (8 0))
    (doraditas (5 0) (7 1))
 )
)

(deftemplate horno
  0 250
  (
    (baja (150 0) (160 1) (180 1) (190 0))
    (media (170 0) (190 1) (210 1) (230 0))
    (alta (210 0) (220 1) (240 1) (250 0))
  )
)

(defrule regla_1
  (galleta poco_crudas)
=> 
  (assert (horno media))
)

(defrule regla_2
  (galleta medio_hechas)
=> 
  (assert (horno alta))
)

(defrule regla_3
  (galleta doraditas)
=> 
  (assert (horno baja))
)