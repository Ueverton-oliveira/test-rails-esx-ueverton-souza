# README
💻 **Stack**

- Ruby 2.6.9

- Rails 4.2.11.3

- Host machine dependencies
  - [Docker (CE)](https://docs.docker.com/engine/installation/)
  - [Docker Compose](https://docs.docker.com/compose/install/)

🚀 **To start the Rails app, run:**

- ⚠️ Is it your first time? ⚠️

  - Create a external volume to share gems across containers:
      ```bash
        docker-compose build
      ```
    Note: If your docker commands only work using sudo before, run the following command in the console to fix it:
    - ```bash
        sudo groupadd docker
      ``` 
    - ```bash
        sudo usermod -aG docker $USER
      ``` 
    - ```bash
        sudo service docker restart
      ```
  - Load all needed gems into `gems` external volume:
    ```bash
      docker-compose run --rm app bundle install
    ```
  - Install the webpack:
    ```bash
      docker-compose run --rm app bundle exec rails webpacker:install
    ```


- Starting all stack (_add `-d` flag to run in background_):

  - Follow the `Starting all stack` section
  ```bash
    docker-compose up
  ```
🛠 **Useful commands:**

- Start Rails console:
  ```bash
    docker-compose run --rm app bundle exec rails c
  ```
- Execute create DB:
  ```bash
      docker-compose run --rm app bundle exec rails db:create
    ```
- Execute migration:
  ```bash
    docker-compose run --rm app bundle exec rails db:migrate
  ```
  
 - Execute population database:
  ```bash
    docker-compose run --rm app bundle exec rails db:seed
  ```
- Access database console:
  ```bash
      docker-compose run --rm app bundle exec rails dbconsole
    ```
- Test a specific file

  ```bash
    docker-compose run --rm app bundle exec rspec spec
   

  ```

![image](https://user-images.githubusercontent.com/60671993/171512954-dd25f901-41bf-4676-ba92-8dc2b24dd129.png)


- Request in /api/v1/historics
```bash

    Documentation link: https://documenter.getpostman.com/view/12106956/Uz5FJcGU
 ```
 
 ![image](https://user-images.githubusercontent.com/60671993/171513150-df0dd832-0897-4254-8cc4-7dc321d76eb8.png)

- Aplication apresentation

<a href="https://www.loom.com/share/8018fc5e9a8242ccbd239be8d24051a8">
    <p>TestEsx - 1 June 2022 - Watch Video</p>
    <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/8018fc5e9a8242ccbd239be8d24051a8-with-play.gif">
  </a>

