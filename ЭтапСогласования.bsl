// АФЛ Казначейство
МодульСогласованияДокументовУХ.ПриСозданииНаСервереОбъект(ЭтотОбъект);
	
#Область УниверсальныеПроцессыСогласование
ДействияСогласованиеУХСервер.НарисоватьПанельСогласованияИОпределитьСостояниеОбъекта(ЭтотОбъект);
#КонецОбласти
// АФЛ Казначейство


// АФЛ Казначейство
// 
// Параметры:
//  ИмяСобытия - Строка - Имя события
//  Параметр - Произвольный - Параметр
//  Источник - Произвольный - Источник
&НаКлиенте
Процедура ОбработкаОповещения(ИмяСобытия, Параметр, Источник)
	#Область УХ_УниверсальныеПроцессыСогласование
	Если ТребуетсяОпределениеСостояния(ИмяСобытия) Тогда
		ОпределитьСостояниеОбъекта();
	КонецЕсли;
	#КонецОбласти
КонецПроцедуры
// АФЛ Казначейство


// АФЛ Казначейство
// 
// Параметры:
//  ИмяСобытия - Строка - Имя события
// 
// Возвращаемое значение:
//  Булево - Требуется определение состояния
&НаКлиенте
Функция ТребуетсяОпределениеСостояния(Знач ИмяСобытия)
	
	ОпределяемыеСобытия = Новый Массив();
	ОпределяемыеСобытия.Добавить("ОбъектСогласован");
	ОпределяемыеСобытия.Добавить("ОбъектОтклонен");
	ОпределяемыеСобытия.Добавить("МаршрутИнициализирован");
	ОпределяемыеСобытия.Добавить("СостояниеЗаявкиПриИзменении");
	
	Возврат Не ОпределяемыеСобытия.Найти(ИмяСобытия) = Неопределено;
	
КонецФункции
// АФЛ Казначейство

// АФЛ Казначейство
#Область ВызовыОбщихПроцедурИФункцийСогласованияОбъектов

&НаКлиенте
Процедура ПринятьКСогласованию_Подключаемый() Экспорт
	ДействияСогласованиеУХКлиент.ПринятьКСогласованию(ЭтотОбъект, Объект.Ссылка);
КонецПроцедуры

&НаКлиенте
Процедура ИсторияСогласования_Подключаемый() Экспорт
	ДействияСогласованиеУХКлиент.ИсторияСогласования(ЭтотОбъект, Объект.Ссылка);
КонецПроцедуры

&НаКлиенте
Процедура СогласоватьДокумент_Подключаемый() Экспорт
	ДействияСогласованиеУХКлиент.СогласоватьДокумент(ЭтотОбъект);
КонецПроцедуры

&НаКлиенте
Процедура ОтменитьСогласование_Подключаемый() Экспорт
	ДействияСогласованиеУХКлиент.ОтменитьСогласование(ЭтотОбъект);
КонецПроцедуры

&НаКлиенте
Процедура МаршрутСогласования_Подключаемый() Экспорт
	ДействияСогласованиеУХКлиент.МаршрутСогласования(ЭтотОбъект, Объект.Ссылка);
КонецПроцедуры

&НаКлиенте
Процедура ВложенияСогласования_Подключаемый() Экспорт
	ДействияСогласованиеУХКлиент.ТелеграмВложенныеФайлы(ЭтотОбъект, Объект.Ссылка);
КонецПроцедуры

&НаСервере
Процедура ОпределитьСостояниеОбъекта(Знач ОбновитьОтветственныхВход = Ложь)
	ДействияСогласованиеУХСервер.ОпределитьСостояниеЗаявки(ЭтотОбъект, ОбновитьОтветственныхВход);
КонецПроцедуры		

// Возвращает значение реквизита СостояниеЗаявки на форме ФормаВход.
// Т.к. данный реквизит генерируется кодом, обращение к нему напрямую из
// кода недоступно.

&НаКлиентеНаСервереБезКонтекста
Функция РеквизитСостояниеЗаявки(ФормаВход)
	Возврат ФормаВход["СостояниеЗаявки"];
КонецФункции

// Возвращает значение реквизита СтатусОбъекта на форме ФормаВход.
// Т.к. данный реквизит генерируется кодом, обращение к нему напрямую из
// кода недоступно.
&НаКлиентеНаСервереБезКонтекста
Функция РеквизитСтатусОбъекта(ФормаВход)
	Возврат ФормаВход["СтатусОбъекта"];
КонецФункции

// Возвращает значение реквизита Согласующий на форме ФормаВход.
// Т.к. данный реквизит генерируется кодом, обращение к нему напрямую из
// кода недоступно.

&НаКлиентеНаСервереБезКонтекста
Функция РеквизитСогласующий(ФормаВход)
	Возврат ФормаВход["Согласующий"];
КонецФункции

#КонецОбласти
// АФЛ Казначейство