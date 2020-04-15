# Enumerable Methods
This project implements my own version of particular Ruby’s enumerable methods.

<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ioanniskousis/Enumerable">
    <img src="images/microverse.png" alt="Microverse Logo" width="80" height="80">
  </a>
  
  <h3 align="center">Enumerable Methods</h3>
  
  <p align="center">
    This project is part of the Microverse curriculum in Ruby module!
    <br />
    <a href="https://github.com/ioanniskousis/Enumerable"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://repl.it/@ioanniskousis/Enumerable">View Demo</a>
    <a href="https://github.com/ioanniskousis/Enumerable/issues">Report Bug</a>
    <a href="https://github.com/ioanniskousis/Enumerable/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
- [Built With](#built-with)
- [Live Version](#live-version)
- [Acknowledgements](#acknowledgements)
- [License](#license)

<!-- ABOUT THE PROJECT -->

## About The Project

The project consists of the following files

- Enumerable.rb
  Extends the Enumerable module including the following methods each emulating an original method with the implied name.
  - my_each
  - my_each_with_index
  - my_select
  - my_all?
  - my_any?
  - my_none? 
  - my_count
  - my_map
  - my_inject

All methods function exactly the way the original does, supporting all versions regardless the called method is provided with arguments, blocks, procs or symbols.

- multiply_els.rb
  This is a test file. A method named multiply_els is created to test my_inject method according the specifications of the project

- all.rb, any.rb, count.rb, each_with_index.rb, each.rb, inject.rb, map.rb, none.rb, select.rb all inside the folder <i>tests</i>
  Each of these files is a test file for a corresponding method. They run all possible case of calling the relevant method.

- tests.rb runs all tests at once including all test files from 'tests' folder

- include_enumerable.rb is an intermidiate file, used by all testing files in order to include the enumerable module. It is created explicitly to support a case in which the enumerable.rb or a test file is moved to different folder.


<!-- ABOUT THE PROJECT -->

## Testing

You may test each method using the test file with the corresponding name or you may run tests.rb to test all methods at once.
Also, multiply_els.rb is explicitly for testing the my_inject method, according to the requirements.

### Built With

This project was built using these technologies.

- Ruby
- Rubocop
- VsCode
- GitFlow

<!-- LIVE VERSION -->

## Live version

You can see it working [![Run on Repl.it](https://repl.it/badge/github/ioanniskousis/Enumerable)](https://repl.it/@ioanniskousis/Enumerable)

<!-- CONTACT -->

## Contributors

:bust_in_silhouette: **Author**
​## Ioannis Kousis

- Github: [@ioanniskousis](https://github.com/ioanniskousis)
- Twitter: [@ioanniskousis](https://twitter.com/ioanniskousis)
- Linkedin: [Ioannis Kousis](https://www.linkedin.com/in/ioannis-kousis-9a5051b4/)
- E-mail: jgkousis@gmail.com

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [Microverse](https://www.microverse.org/)
- [The Odin Project](https://www.theodinproject.com/)
- [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/ioanniskousis/Bubble_sort.svg?style=flat-square
[contributors-url]: https://github.com/ioanniskousis/Bubble_sort/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ioanniskousis/Bubble_sort.svg?style=flat-square
[forks-url]: https://github.com/ioanniskousis/Bubble_sort/network/members
[stars-shield]: https://img.shields.io/github/stars/ioanniskousis/Bubble_sort.svg?style=flat-square
[stars-url]: https://github.com/ioanniskousis/Bubble_sort/stargazers
[issues-shield]: https://img.shields.io/github/issues/ioanniskousis/Bubble_sort.svg?style=flat-square
[issues-url]: https://github.com/ioanniskousis/Bubble_sort/issues

<!-- LICENSE -->

## License

📝
This project is [MIT](https://opensource.org/licenses/MIT) licensed.
