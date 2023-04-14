
NAME = golang-demo
BUILD_DIR = build

BUILD_ENV = CGO_ENABLED=0
BUILD_ARGS = -a -ldflags '-extldflags "-static"'

clean:
	rm -rf $(BUILD_DIR)

.PHONY: test
test:
	go test -cover ./...

$(BUILD_DIR): $(BUILD_DIR)/$(NAME)

$(BUILD_DIR)/$(NAME):
	$(BUILD_ENV) go build $(BUILD_ARGS) -o $(BUILD_DIR)/$(NAME) ./main.go

.PHONY: docker
docker:
	docker build -t $(NAME) .