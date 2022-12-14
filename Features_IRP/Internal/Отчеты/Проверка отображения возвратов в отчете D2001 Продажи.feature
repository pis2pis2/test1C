#language: ru

@tree
@отчеты

Функционал: тестирование отчетов

Как Тестировщик я хочу
протестировать отчеты
чтобы убедиться, что у пользователя не возникнет проблем

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: подготовительный сценарий
	Когда экспорт основных данных
	Когда экспорт документов закупок

Сценарий: Проверка отображения возвратов в отчете D2001 Продажи
*Открыть отчет
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
*Подождать пока отчет откроется
	И я жду когда в табличном документе "Result" заполнится ячейка "R19C4" в течение 20 секунд
*Сравнить полученный отчет с эталононным отчетом
	Дано Табличный документ "Result" равен макету "макетОтчетD2001"

