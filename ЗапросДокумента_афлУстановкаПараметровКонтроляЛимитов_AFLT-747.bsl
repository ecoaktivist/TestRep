Движения.афлПоказателиПараметровКонтроляЛимитов.Записывать = Ложь;
	Движения.афлСрокОтсрочкиКонтроляЛимитов.Записывать = Ложь;
	Движения.афлСчетаУчетаРасчетовСКонтрагентами.Записывать = Ложь;
	Движения.афлСчетаУчетаФО.Записывать = Ложь;
	Движения.афлТипыДоговоровКонтроляЛимитов.Записывать = Ложь;
	
	Запрос = Новый Запрос;
	Запрос.Текст =
		"ВЫБРАТЬ РАЗРЕШЕННЫЕ
		|	афлУстановкаПараметровКонтроляЛимитов.Дата КАК Период,
		|	афлУстановкаПараметровКонтроляЛимитов.Ссылка КАК Регистратор,
		|	афлУстановкаПараметровКонтроляЛимитов.Организация КАК Организация,
		|	афлУстановкаПараметровКонтроляЛимитов.ДатаНачала КАК ДатаНачала,
		|	афлУстановкаПараметровКонтроляЛимитов.ВидЛимита КАК ВидЛимита,
		|	афлУстановкаПараметровКонтроляЛимитовТипДоговора.ТипДоговора КАК ТипДоговора,
		|	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.СчетаУчетаРасчетовСКонтрагентами КАК
		|		СчетаУчетаРасчетовСКонтрагентами,
		|	афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.СчетаУчетаФинОбеспПолученного КАК
		|		СчетаУчетаФинОбеспПолученного,
		|	афлУстановкаПараметровКонтроляЛимитов.СрокОтсрочки КАК СрокОтсрочки,
		|	афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.СтатусДоговора КАК СтатусДоговора,
		|	афлУстановкаПараметровКонтроляЛимитов.ПорогПредупрежденияВПроцентах КАК ПорогПредупрежденияВПроцентах
		|ИЗ
		|	Документ.афлУстановкаПараметровКонтроляЛимитов КАК афлУстановкаПараметровКонтроляЛимитов
		|		ЛЕВОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.СчетаУчетаРасчетаСКонтрагентами КАК
		|			афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами
		|		ПО афлУстановкаПараметровКонтроляЛимитов.Ссылка = афлУстановкаПараметровКонтроляЛимитовСчетаУчетаРасчетаСКонтрагентами.Ссылка
		|		ЛЕВОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.СчетаУчетаФинансовогоОбеспеченияПолученного КАК
		|			афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного
		|		ПО афлУстановкаПараметровКонтроляЛимитов.Ссылка = афлУстановкаПараметровКонтроляЛимитовСчетаУчетаФинансовогоОбеспеченияПолученного.Ссылка
		|		ЛЕВОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.СтатусДоговора КАК
		|			афлУстановкаПараметровКонтроляЛимитовСтатусДоговора
		|		ПО афлУстановкаПараметровКонтроляЛимитов.Ссылка = афлУстановкаПараметровКонтроляЛимитовСтатусДоговора.Ссылка
		|		ЛЕВОЕ СОЕДИНЕНИЕ Документ.афлУстановкаПараметровКонтроляЛимитов.ТипДоговора КАК
		|			афлУстановкаПараметровКонтроляЛимитовТипДоговора
		|		ПО афлУстановкаПараметровКонтроляЛимитов.Ссылка = афлУстановкаПараметровКонтроляЛимитовТипДоговора.Ссылка
		|ГДЕ
		|	афлУстановкаПараметровКонтроляЛимитов.Ссылка = &Ссылка";
		
	Запрос.УстановитьПараметр("Ссылка", Ссылка);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	Выборка = РезультатЗапроса.Выбрать();
	
	Пока Выборка.Следующий() Цикл
		
		Движение = Движения.афлПараметрыКонтроляЛДЗ.Добавить();
		
		ЗаполнитьЗначенияСвойств(Движение, Выборка);
		
	КонецЦикла;