# Contributing for prompts (with text expansion)

I am thrilled that you're interested in contributing to our project! Your contributions are vital to making this project great and we welcome contributions from everyone.

- [Contributing](#contributing)
  - [How to Contribute](#how-to-contribute)
    - [Step 1: Set Up Your Environment](#step-1-set-up-your-environment)
    - [Step 2: Make Your Changes](#step-2-make-your-changes)
      - [Changes on GPTs](#changes-on-gpts)
      - [Changes on prompts](#changes-on-prompts)
    - [Step 3: Submit Your Changes](#step-3-submit-your-changes)
    - [Step 4: Review Process](#step-4-review-process)
  - [Adding Prompts](#adding-prompts)
  - [Need Help?](#need-help)

## How to Contribute

Contributions to this project can be made primarily through Pull Requests (PRs) on GitHub. Here's a quick guide on how you can contribute:

### Step 1: Set Up Your Environment

1. Fork the repository on GitHub.
2. Clone your fork to your local machine.
3. Set up the development environment (by installing Espanso).

### Step 2: Make Your Changes

1. Create a new branch for your work.
2. Make your changes in your branch. Ensure your changes are well-documented and follow the project's coding standards.
3. Test your changes locally to ensure everything works as expected.

#### Changes on GPTs

1. The easy one, just change the main prompt and submit your changes!

#### Changes on prompts

1. Edit the `.md` file and edit / add your own prompt.
2. Generate the proper Espanso package either by doing it manually or using [this GPT-4 prompt](./docs/generate-package.md).
3. Update the `prompts-dev`` Espanso [package.yml](./prompts-dev/package.yml).

### Step 3: Submit Your Changes

1. Commit your changes. Write a clear commit message describing what your changes do.
2. Push your changes to your fork on GitHub.
3. Open a Pull Request to the main repository. Include a clear description in your PR about what your changes are and why they are necessary.

### Step 4: Review Process

1. Wait for the project maintainers to review your PR. Be open to feedback and make changes if requested.
2. Once your PR is approved and merged, your changes will be part of the project.

## Adding Prompts

If you are adding new prompts:

- Ensure they are clear, concise, and relevant to the project.
- Update any relevant documentation or tests to reflect your changes.
- Follow the project's guidelines on formatting and style for prompts.

## Need Help?

If you need help or have any questions, feel free to open an issue for discussion or reach out to the project maintainers.
