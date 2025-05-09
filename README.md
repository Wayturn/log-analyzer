![Shell](https://img.shields.io/badge/language-shell-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![BuiltWith](https://img.shields.io/badge/built_with-UNIX_tools-lightgrey.svg)

# Log Analyzer (Shell Script)

A simple yet useful shell-based log analyzer built with pure UNIX tools.  
Filters out `ERROR` messages, counts their frequency, and exports the result as a clean report — no dependencies, no BS.

## Features

- Supports any plain-text log file
- Outputs top 10 frequent errors
- Saves analysis to timestamped report file
- No dependencies — pure Bash and UNIX tools

## Usage

```bash
./analyze-errors.sh path/to/your/log.txt
Sample output:
分析完成，結果已儲存於：error-report-2025-05-09_23-05-00.txt
```

## Project Structure
```bash
.
├── analyze-errors.sh # Main script
├── README.md # Documentation
├── sample-log.txt # Sample input file
└── output/ # (Optional) Where reports are saved
```

## Why I Built This

I wanted to better understand how UNIX pipelines work by building a real-world tool.
This project helps me practice:
- Working with logs
- Shell scripting
- CLI tool design

## License

MIT © 2025 [Wayturn](https://github.com/Wayturn)
