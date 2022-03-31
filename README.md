# Mars-Rover

> Mars Rover is a program that controlls rovers on Mars and send feed back to earth. You can enter commands that instruct the Rover which direction to turn to or how many moves it needs to take. The results printed out are the x coordinate, y coordinate, and direction values that detail where the rover is located & the direction it is facing.

> Before proceeding, instructions on how to use the operation window are pre-printed for you, read them carefully.

## Project Specifications:
```
A squad of robotic rovers are to be landed by NASA on a plateau on Mars.

This plateau, which is curiously rectangular, must be navigated by the rovers so that their on board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position is represented by a combination of an x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.

'M' means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).
```

![screenshot](/images/mars_rover_screenshot.png)

## Local Configuration:

> Follow the below steps to configure and get the application running on your local machine:
```
git clone https://github.com/ClaytonSiby/Mars-Rover.git
```

running the above command from the terminal clones the project to a desired location on your local machine.

navigate to the /Mars-Rover directory by typing the below command and pressing Enter:
```
cd /Mars-Rover
```

## Gem/Dependancy installation:

> All dependancies a defined in the Gemfile, run the following command to make sure they are installed locally:

```
bundle install
```

## Run tests with Rspec:

> I used rspec & followed the Test-Driven Development approach in the development of this project.

to see the details about which tests-cases are running or run all tests, run the following command:
```
bundle exec rspec --format documentation
```

## About Author 

👤 **Clayton Siby**
​

- Github: [@ClaytonSiby](https://github.com/ClaytonSiby)
   
- Linkedin: [Clayton Siby](https://www.linkedin.com/in/clayton-siby/)

- Twitter: [@ClaytonSiby](https://twitter.com/ClaytonSiby)

## :handshake: Contributing 

* Contributions, issues and feature requests are welcome!
> Feel free to check the [issues page](https://github.com/ClaytonSiby/Mars-Rover/issues)
- To contribute to this project:
- Fork this repository & clone locally.
- Create an upstream remote and sync your local copy.
- Create a new branch.
- Push your code to your origin repository.
- Create a new Pull Request .

## Show your support

Give a ⭐️ if you like this project!