ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Ссылка КАК Ссылка,
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
ГДЕ
	афлУстановкаПараметровКонтроляЛимитов.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.СчетаУчетаРасчетовСКонтрагентами КАК СчетаУчетаРасчетовСКонтрагентами
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов.СчетаУчетаРасчетаСКонтрагентами КАК афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		ПО афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.Ссылка = афлУстановкаПараметровКонтроляЛимитов.Ссылка
ГДЕ
	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.СчетаУчетаФинОбеспПолученного КАК СчетаУчетаФинОбеспПолученного
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов.СчетаУчетаФинансовогоОбеспеченияПолученного КАК афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		ПО афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.Ссылка = афлУстановкаПараметровКонтроляЛимитов.Ссылка
ГДЕ
	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитовТипДоговора.ТипДоговора КАК ТипДоговора
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов.ТипДоговора КАК афлУстановкаПараметровКонтроляЛимитовТипДоговора
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		ПО афлУстановкаПараметровКонтроляЛимитовТипДоговора.Ссылка = афлУстановкаПараметровКонтроляЛимитов.Ссылка
ГДЕ
	афлУстановкаПараметровКонтроляЛимитовТипДоговора.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитов.СрокОтсрочки КАК СрокОтсрочки
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
ГДЕ
	афлУстановкаПараметровКонтроляЛимитов.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитов.СтатусИсполнения КАК СтатусИсполнения,
	афлУстановкаПараметровКонтроляЛимитов.СтатусСогласования КАК СтатусСогласования,
	афлУстановкаПараметровКонтроляЛимитов.ПорогПредупрежденияВПроцентах КАК ПорогПредупрежденияВПроцентах,
	афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.СтатусДоговора КАК СтатусДоговора
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов.СтатусДоговора КАК афлУстановкаПараметровКонтроляЛимитовСтатусДоговора
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		ПО (афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.Ссылка = афлУстановкаПараметровКонтроляЛимитов.Ссылка)
ГДЕ
	афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.Ссылка = &Ссылка