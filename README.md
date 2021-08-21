# CSV Query Language

## COMP2212: Programming Language Concepts

---

## Introduction

### Task Description

- Design a programming langauage that supports the querying of CSV text files, and write an interpreter that is able to execute programs written in this language, using **Haskell**.

### Language Definition

- The programming language developed is known as **CSVQL**, and is heavily influenced by **SQL**.
- A detailed description of the CSVQL programming language (*including syntax, grammar, language semantics, execution model and example programs*) is provided in `Documentation.pdf`. 

---

## Running The Application

- Running the application involves passing an input program into the interpreter for it to execute.

- The interpreter is pre-compiled as a program called `csvql`, and can be found in the `build` directory of the repo.

- Write a program using the programming-langauge (see `Documentation`) and save it into a plain text file (*file extension is not important*) in the same directory as the language interpreter - make sure any files (i.e., `.csv` files) are also in the same directory.

- **Execute** the written program with the following command:

  - ```bash
    ./csvql <program name>
    ```

  - Where `program name` is the name of the file containing the program written in the CSVQL programming langauge.

- The result of the program will be outputted to the terminal.

---

## Compilation Guide

- The provided `csvql.cabal` file can be used with the `cabal` framework for compilation of the CSVQL interpreter.

- Use the following command to compile the interpreter:

```bash
cabal build
```

- This will create a new directory called `dist-newstyle` and place the compiled `csvql` interpreter inside it.

  - Path to the executable: `dist-newstyle/build/x86_64-osx/ghc-8.4.3/csvql-0.1.0.0/x/csvql/build/csvql`

- `cabal` can also be used to run the compiled interpreter with the following command:

```bash
cabal run csvql <programName>
```
- Where:
  - `programName` is the name of the CSVQL program being executed.
- Note however that using the `cabal run` command will output the version status of `cabal` (e.g., `Up To Date`) before outputting the result of the execution.

--- 

## Editing Grammar and Syntax

- TODO

---