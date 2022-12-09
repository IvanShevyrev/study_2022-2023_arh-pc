---
## Front matter
title: "Лабораторная работа №5. Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM."
subtitle: "Дисциплина: Архитектура ЭВМ"
author: "Иван Шевырев"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение практических навыков работы в Midnight Commander. Освоение

# Выполнение лабораторной работы

## Midnight Commander

### Откроем файловый менеджер Midnight Commander

![открытие Midnigt Commander](image/1.png){ #fig:001 width=70% }

### Перейдем в каталог `~/work/arch-pc/`

![Переход в каталог](image/2.png){ #fig:002 width=70% }

### Создадим папку

Нажмем клавишу `F7`

![Создание папки](image/3.png){ #fig:003 width=70% }

Перейдем в созданную папку

![Переход в новую папку](image/4.png){ #fig:004 width=70% }

### Создадим файл

Перейдя в папку, наберем `touch lab5-1.asm`, воспользовавшись строкой ввод. 

![Создание файла](image/5.png){ #fig:005 width=70% }

Как видим в MC, файл создался 

![Созданный файл](image/6.png){ #fig:006 width=70% }

### Откроем файл

Нажмем `F4`, что бы открыть файл

![Открытый пустой файл](image/7.png){ #fig:007 width=70% }


### Введем код в файл

Введем текст программы из листинга 6.1


![Файл с введенным кодом](image/8.png){ #fig:008 width=70% }

Сохраним файл

![Сохранение файла](image/9.png){ #fig:009 width=70% }

Откроем заново файл, что б убедиться, что данные сохранились. 

![Проверка, что файл сохранился ](image/10.png){ #fig:010 width=70% }

### Запустим код

Создадим исполняемый файл и запустим его. 

![Трансляция, линковка и запуск](image/11.png){ #fig:011 width=70% }

Программа вывела наше имя.

## Подключение внешнего файла

Откроем папку с загрузками и рабочую директорию вместе, в MC

![Просмотр двух папок, одновременно](image/12.png){ #fig:012 width=70% }

Нажмем `F5` что бы скопировть файл. 

![Копирование файла](image/13.png){ #fig:013 width=70% }

Файлы скопировались.

![Скопированный файл](image/14.png){ #fig:014 width=70% }

Скопируем файл `lab5-1-asm ` в `lab5-2.asm`, нажав `F5`

![Создание копии файла ](image/15.png){ #fig:015 width=70% }

### Написание кода для lab5-2

Введем текст в файл

![Введенный код](image/16.png){ #fig:016 width=70% }

### Исполнение кода

![Трансляция, линковка и запуск](image/17.png){ #fig:017 width=70% }

### Изменим строчку в коде

Заменим `sprintLF` на  `sprit` и также запустим код. 

![Запуск измененного кода](image/18.png){ #fig:018 width=70% }

# Задания для самостоятельной работы

## Программа без использования `in_out.asm` 

![Код lab5-2.1.asm](image/19.png){ #fig:019 width=70% }

Запустим и выведем результат

![Вывод скопилированной программы](image/20.png){ #fig:020 width=70% }

Программа выводит введенную строку. 

## Программа с использованием `in_out.asm` 

Напишем ту же программу, используя функции из `in_out.asm`

![Код lab5-2.1.asm](image/21.png){ #fig:021 width=70% }

Странслируем, слинкуем и запустим

![Вывод скомпилированной программы](image/22.png){ #fig:022 width=70% }

Как видим, эта программа тоже выводит введенную строку. 

# Выводы

Мы приобрели практические навыки работы в Midnight Commander и освоили некоторые инструкции языка ассемблера (а именно mov и int ) 




