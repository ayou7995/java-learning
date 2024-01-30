.PHONY: clean
FORCE: ;

clean:
	mvn clean
	docker-compose down

docker-run:
	docker-compose up

docker-test:
	mvn clean install -Dspring.profiles.active=test test
