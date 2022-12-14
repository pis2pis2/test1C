#language: ru

@tree

Функционал: Проверка доступности заполнения поля "Контрагент"

Как Тестировщик я хочу
проверить доступность заполнения поля "Контрагент"
чтобы убедиться, что пользователь не ошибется при вводе данных

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: подготовительный сценарий
	Когда экспорт основных данных
	Когда экспорт документов закупок

Сценарий: Проверка доступности заполнения поля "Контрагент"
*Создать новый заказ покупателя
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
*Заполнить поле "Партнер"
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке
		| 'Код' | 'Наименование'            |
		| '1'   | 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
*Проверить что поля "Партнер" и "Соглашение" заполнены данными
	Тогда элемент формы с именем "Partner" стал равен 'Клиент 1 (1 соглашение)'
	И элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)' 
*Очистить поле "Партнер"
	Когда в поле с именем 'Partner' я ввожу текст ''
	И я перехожу к следующему реквизиту
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
*Проверить что поле "Контрагент" недоступно для заполнения
	И элемент формы с именем "LegalName" не доступен
		

		
	