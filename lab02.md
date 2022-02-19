---
title: "Лабораторная работа №2"
author: "Липатникова М.С. группа НФИбд-02-19"
subtitle: "Задача о погоне"
output:
  word_document: default
  pdf_document: default
toc-title: Содержание
toc: yes
toc_depth: 2
lof: yes
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: yes
pdf-engine: lualatex
header-includes:
- \linepenalty=10
- \interlinepenalty=0
- \hyphenpenalty=50
- \exhyphenpenalty=50
- \binoppenalty=700
- \relpenalty=500
- \clubpenalty=150
- \widowpenalty=150
- \displaywidowpenalty=50
- \brokenpenalty=100
- \predisplaypenalty=10000
- \postdisplaypenalty=0
- \floatingpenalty = 20000
- \raggedbottom
- \usepackage{float}
- \floatplacement{figure}{H}
---


# Цель работы

Построить математическую модель для выбора правильной стратегии при решении задач поиска на примере задачи о погоне. Построить график в Scilab и найти точку пересечения двух объектов.

# Задание работы

### Вариант 37

На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка
обнаруживается на расстоянии 14,1 км от катера. Затем лодка снова скрывается в
тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость
катера в 3,9 раза больше скорости браконьерской лодки.
1. Запишите уравнение, описывающее движение катера, с начальными условиями для двух случаев (в зависимости от расположения катера
относительно лодки в начальный момент времени).
2. Постройте траекторию движения катера и лодки для двух случаев.
3. Найдите точку пересечения траектории катера и лодки 

# Теоретичсекое введение

**Scilab**
  — пакет прикладных математических программ, предоставляющий открытое окружение для инженерных (технических) и научных расчётов [1].
  
  **Кривая погони** — кривая, представляющая собой решение задачи о «погоне», которая ставится следующим образом. Пусть точка A равномерно движется по некоторой заданной кривой. Требуется найти траекторию равномерного движения точки P такую, что касательная, проведённая к траектории в любой момент движения, проходила бы через соответствующее этому моменту положение точки A [2].

# Выполнение лабораторной работы

## Постановка задачи

1. Принимает за $t_0 = 0$, $x_{л0} = 0$ - место нахождения лодки браконьеров в
момент обнаружения, $x_{к0} = k$- место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки.
2. Введем полярные координаты. Считаем, что полюс - это точка обнаружения
лодки браконьеров
$x_{л0}$$(\theta$ = $x_{л0} = 0$ ), а полярная ось
r проходит через точку
нахождения катера береговой охраны. (@fig:001)

![Положение катера и лодки в начальный момент времени](1png.png){ #fig:001 width=100%}

3. Траектория катера должна быть такой, чтобы и катер, и лодка все время
были на одном расстоянии от полюса
$\theta$
, только в этом случае траектория
катера пересечется с траекторией лодки.
Поэтому для начала катер береговой охраны должен двигаться некоторое
время прямолинейно, пока не окажется на том же расстоянии от полюса, что
и лодка браконьеров. После этого катер береговой охраны должен двигаться
вокруг полюса удаляясь от него с той же скоростью, что и лодка
браконьеров.

4. Чтобы найти расстояние x (расстояние после которого катер начнет двигаться вокруг полюса), необходимо составить простое уравнение. Пусть через время t катер и лодка окажутся на одном расстоянии x от полюса. За
это время лодка пройдет x, а катер $k-x$  (или $k+x$, в зависимости от начального положения катера относительно полюса). Время, за которое они пройдут это расстояние, вычисляется как
$x / v$ или $k-x / 3.9v$  (во втором
случае $k+x / 3.9v$). Так как время одно и то же, то эти величины одинаковы.
Тогда неизвестное расстояние
x можно найти из следующего уравнения:
$$\frac{x}{v} = \frac{k-x}{3.9v}$$
в первом случае или
$$\frac{x}{v} = \frac{k+x}{3.9v}$$
во втором.
Отсюда мы найдем два значения $x_1 = k / 4.9$ и $x_2 = k / 2.9$. Задачу будем решать для двух случаев.

5. После того, как катер береговой охраны окажется на одном расстоянии от полюса, что и лодка, он должен сменить прямолинейную траекторию и начать двигаться вокруг полюса удаляясь от него со скоростью лодки v.
Для этого скорость катера раскладываем на две составляющие: $v_r$ - радиальная скорость и $v_\tau$ - тангенсальная скорость (@fig:002). Радиальная
скорость - это скорость, с которой катер удаляется от полюса, $v_r = \frac{dr}{dt}$. Нам нужно, чтобы эта скорость была равна скорости лодки, поэтому полагаем $\frac{dr}{dt}= v$ <br>
Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. Она равна произведению угловой скорости $\frac{d\theta}{dt}$ на радиус r, $v_\tau=r\frac{d\theta}{dt}$

![Разложение скорости катера на тангенциальную и радиальную составляющие](2png.png){#fig:002 width=100%}

Из рисунка видно: $v_\tau=\sqrt{(3.9v)^2)-v^2}=\sqrt{15.21}v$ (учитывая, что радиальная скорость равна v). Тогда получаем $r\frac{d\theta}{dt}=\sqrt{15.21}v$

6. Решение исходной задачи сводится к решению системы из двух
дифференциальных уравнений:
$\begin{cases}
\frac{dr}{dt} = v\\
r\frac{d\theta}{dt} = \sqrt{15.21}v
\end{cases}$
с начальными условиями
$\begin{cases}
\theta_0 = 0\\
r_0 = x_1  
\end{cases}$
или
$\begin{cases}
\theta_0 = -\pi\\
r_0 = x_2  
\end{cases}$ , где $x_1 = k / 4.9$, а $x_2 = k / 2.9$.
<br>
Исключая из полученной системы производную по t, можно перейти к следующему уравнению:
$\frac{dr}{d\theta} = \frac{r}{\sqrt{15.21}}$
Начальные условия остаются прежними. Решив это уравнение, мы получим
траекторию движения катера в полярных координатах.

## Код в Scilab
Решаем дифференциальное уравнение в Scilab.
(@fig:003)(@fig:006)

![Код в Scilab в первом случае](2laba.png){#fig:003 width=100%}

Точка пересечения траекторий в первом случае - (8.35;-8.35)
(@fig:004)(@fig:005)

![График в первом случае](1-1graph.png){#fig:004 width=100%}

![Приближение графика в первом случае](1-2_graph.png){#fig:005 width=100%}

![Код в Scilab во втором случае](2_2laba.png){#fig:006 width=100%}

Точка пересечения траекторий во втором случае - (31.5;-31.5)
(@fig:007)(@fig:008)

![График во втором случае](2-1graph.png){#fig:007 width=100%}

![Приближение графика во втором случае](2-2_graph.png){#fig:008 width=100%}

# Вывод

Построили математическую модель для выбора правильной стратегии при решении задач поиска на примере задачи о погоне. Построили график в Scilab и нашли точку пересечения двух объектов.

# Список литературы

1. Wikipedia: Scilab ( [1]: https://ru.wikipedia.org/wiki/Scilab)
2. Wikipedia: Кривая погони ( [2]: https://ru.wikipedia.org/wiki/Кривая_погони)