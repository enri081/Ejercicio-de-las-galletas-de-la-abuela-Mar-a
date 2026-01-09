# Ejercicio de las galletas de la abuela María.

## (Control difuso de un horno con un sistema experto implementado en CLIPS).

### Alumnos
- Enrique Moreno Alcántara
- Carlos Cerezo López

### Archivos
- "bc.clp": Base de conocimientos que contiene la logica difusa de la galleta, la del horno y las reglas aplicadas a este.

- "bh.clp": Base de hechos suponiendo que el indice cromatico es 6.

```
FuzzyCLIPS> (load "galletas/bc.clp")
Defining deftemplate: galleta
Defining deftemplate: horno
Defining defrule: regla_1 +j
Defining defrule: regla_2 +j
Defining defrule: regla_3 +j
TRUE
FuzzyCLIPS> (load "galletas/bh.clp")
Defining deffacts: hechos
TRUE
FuzzyCLIPS> (reset)
FuzzyCLIPS> (run)
FuzzyCLIPS> (maximum-defuzzify 4)
230.0
FuzzyCLIPS> (moment-defuzzify 4)
206.25
```
