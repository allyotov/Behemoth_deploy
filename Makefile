install:
	docker-compose up -d

createdb:
	docker-compose exec backend python ./behemoth/manage.py reset_db

backend.migrate:
	docker-compose exec backend python ./behemoth/manage.py migrate

backend.superuser:
	docker-compose exec backend python ./behemoth/manage.py createsuperuser

backend.run:
	docker-compose exec backend python ./behemoth/manage.py runserver 0.0.0.0:8000

down:
	docker-compose down

backend.logs:
	docker-compose logs backend

bot.logs:
	docker-compose logs bot

fb_handler.logs:
	docker-compose logs fb_handler