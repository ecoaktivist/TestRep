ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитов.Ссылка КАК Ссылка
ПОМЕСТИТЬ ВТ_ОбщиеДанные
ИЗ
	Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
ГДЕ
	афлУстановкаПараметровКонтроляЛимитов.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.СчетаУчетаРасчетовСКонтрагентами КАК СчетаУчетаРасчетовСКонтрагентами,
	ВТ_ОбщиеДанные.Организация КАК Организация,
	ВТ_ОбщиеДанные.ВидЛимита КАК ВидЛимита
ПОМЕСТИТЬ ВТ_СчетаУчетаРасчетовСКонтрагентами
ИЗ
	ВТ_ОбщиеДанные КАК ВТ_ОбщиеДанные
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.СчетаУчетаРасчетаСКонтрагентами КАК афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами
		ПО ВТ_ОбщиеДанные.Ссылка = афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.Ссылка
ГДЕ
	ВТ_ОбщиеДанные.Ссылка = &Ссылка
;


////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.СчетаУчетаФинОбеспПолученного КАК СчетаУчетаФинОбеспПолученного,
	ВТ_ОбщиеДанные.Организация КАК Организация,
	ВТ_ОбщиеДанные.ВидЛимита КАК ВидЛимита
ПОМЕСТИТЬ ВТ_СчетаУчетаФО
ИЗ
	ВТ_ОбщиеДанные КАК ВТ_ОбщиеДанные
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.СчетаУчетаФинансовогоОбеспеченияПолученного КАК афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного
		ПО ВТ_ОбщиеДанные.Ссылка = афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.Ссылка
ГДЕ
	ВТ_ОбщиеДанные.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	ВТ_ОбщиеДанные.Организация КАК Организация,
	ВТ_ОбщиеДанные.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитовТипДоговора.ТипДоговора КАК ТипДоговора
ПОМЕСТИТЬ ВТ_ТипыДоговоровКонтроляЛимитов
ИЗ
	ВТ_ОбщиеДанные КАК ВТ_ОбщиеДанные
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.ТипДоговора КАК афлУстановкаПараметровКонтроляЛимитовТипДоговора
		ПО ВТ_ОбщиеДанные.Ссылка = афлУстановкаПараметровКонтроляЛимитовТипДоговора.Ссылка
ГДЕ
	ВТ_ОбщиеДанные.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	афлУстановкаПараметровКонтроляЛимитов.СрокОтсрочки КАК СрокОтсрочки,
	ВТ_ОбщиеДанные.Организация КАК Организация,
	ВТ_ОбщиеДанные.ВидЛимита КАК ВидЛимита
ПОМЕСТИТЬ ВТ_СрокОтсрочкиКонтроляЛимитов
ИЗ
	ВТ_ОбщиеДанные КАК ВТ_ОбщиеДанные
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		ПО ВТ_ОбщиеДанные.Ссылка = афлУстановкаПараметровКонтроляЛимитов.Ссылка
ГДЕ
	ВТ_ОбщиеДанные.Ссылка = &Ссылка
;

////////////////////////////////////////////////////////////////////////////////
ВЫБРАТЬ
	ВТ_ОбщиеДанные.Организация КАК Организация,
	ВТ_ОбщиеДанные.ВидЛимита КАК ВидЛимита,
	афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.СтатусДоговора КАК СтатусДоговора,
	афлУстановкаПараметровКонтроляЛимитов.СтатусИсполнения КАК СтатусИсполнения,
	афлУстановкаПараметровКонтроляЛимитов.СтатусСогласования КАК СтатусСогласования,
	афлУстановкаПараметровКонтроляЛимитов.ПорогПредупрежденияВПроцентах КАК ПорогПредупрежденияВПроцентах
ПОМЕСТИТЬ ВТ_ПоказателиПараметровКонтроляЛимитов
ИЗ
	ВТ_ОбщиеДанные КАК ВТ_ОбщиеДанные
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		ПО ВТ_ОбщиеДанные.Ссылка = афлУстановкаПараметровКонтроляЛимитов.Ссылка
		ПОЛНОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.СтатусДоговора КАК афлУстановкаПараметровКонтроляЛимитовСтатусДоговора
		ПО ВТ_ОбщиеДанные.Ссылка = афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.Ссылка
ГДЕ
	ВТ_ОбщиеДанные.Ссылка = &Ссылка