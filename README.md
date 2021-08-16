# CSV Query Language

## COMP2212: Programming Language Concepts

---

### Project Overview

#### Task Description

- Design a programming langauage that supports the querying of CSV text files, and write an interpreter that is able to execute programs written in this language, using **Haskell**.

#### Language Definition

- The programming language developed is known as **Choran**, and is heavily influenced by **SQL**.
- A detailed description of the Choran programming language (*including syntax, grammar, language semantics, execution model and example programs*) is provided in `Documentation.pdf`. 

---

### Running The Application

- Running the application involves passing an input program into the interpreter for it to execute.

- The interpreter is pre-compiled, and can be found in the `build` directory of the repo.

- If the interpreter is not working correctly, try re-building it with the following command:

  - ```bash
    cabal build
    ```

  - This will build the project and create an executable in a new directory called `dist-newstyle`.

- Write a program using the programming-langauge (see `Documentation`) and save it into a plain text file (*file extension is not important*) in the same directory as the language interpreter - make sure any files (i.e., `.csv` files) are also in the same directory.

- **Execute** the written program with the following command:

  - ```bash
    ./csvql <program name>
    ```

  - Where `program name` is the name of the file containing the program written in the programming langauge.

- The result of the program will be outputted to the terminal.

---

