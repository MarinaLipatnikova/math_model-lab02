---
title: "Лабораторная работа №2"
author: |
  Липатникова Марина Сергеевна\inst{1}
date: "19.02.2022, Moscow"
output:
  beamer_presentation: default
  slidy_presentation: default
  ioslides_presentation: default
  powerpoint_presentation: default
subtitle: Задача о погоне
lang: ru-RU
institute: |
  \inst{1}RUDN University, Moscow, Russian Federation
toc: false
slide_level: 2
theme: metropolis
header-includes:
- \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
- \makeatletter
- \beamer@ignorenonframefalse
- \makeatother
aspectratio: 43
section-titles: yes
---

## Цель работы

Построить математическую модель для выбора правильной стратегии при решении задач поиска на примере задачи о погоне. Построить график в Scilab и найти точку пересечения двух объектов.

## Задание работы

1. Запишите уравнение, описывающее движение катера, с начальными условиями для двух случаев (в зависимости от расположения катера
относительно лодки в начальный момент времени).
2. Постройте траекторию движения катера и лодки для двух случаев.
3. Найдите точку пересечения траектории катера и лодки 

## Теоретическое введение

 Scilab  — пакет прикладных математических программ, предоставляющий открытое окружение для инженерных (технических) и научных расчётов.

 Кривая погони — кривая, представляющая собой решение задачи о «погоне», которая ставится следующим образом. Пусть точка A равномерно движется по некоторой заданной кривой. Требуется найти траекторию равномерного движения точки P такую, что касательная, проведённая к траектории в любой момент движения, проходила бы через соответствующее этому моменту положение точки A.

## Дифференциальное уравнение и начальные условия

Уравнение, решение которого является траеткорией движения катера в полярных координатах: $\frac{dr}{d\theta} = \frac{r}{\sqrt{15.21}}$

Начальные условия для первого случая : $\begin{cases}
\theta_0 = 0\\
r_0 = 2.88
\end{cases}$

Начальные условия для второго случая :
$\begin{cases}
\theta_0 = -\pi\\
r_0 = 4.86
\end{cases}$

## Траектории движения в первом случае

Точка пересечения траекторий в первом случае - (8.35;-8.35)

![Траектории движения в первом случае](1-1graph.png)

## Траектории движения во втором случае

Точка пересечения траекторий во втором случае - (31.5;-31.5)

![Траектории движения во втором случае](2-1graph.png)

## Результат выполнения работы

- Построили математическую модель для выбора правильной стратегии при решении задач поиска на примере задачи о погоне. 
- Построили график в Scilab и нашли точку пересечения двух объектов.

## Список литературы

1. Wikipedia: Scilab (https://ru.wikipedia.org/wiki/Scilab)
2. Wikipedia: Кривая погони ( [2]: https://ru.wikipedia.org/wiki/Кривая_погони)