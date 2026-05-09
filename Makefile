# Variable used below
DC = docker compose

.PHONY: frontend-create frontend-run frontend-stop frontend-down frontend-logs

frontend-create:
	@echo "🛠️ Creating and building docker containers..."
	$(DC) up --build

frontend-run:
	@echo "🚀 Running docker containers in background..."
	$(DC) run --service-ports app npx expo start --tunnel

frontend-stop:
	@echo "🛑 Stopping docker containers..."
	$(DC) stop

frontend-down:
	@echo "🧹 Removing containers and networks..."
	$(DC) down

frontend-logs:
	@echo "📋 Showing real-time logs..."
	$(DC) logs -f