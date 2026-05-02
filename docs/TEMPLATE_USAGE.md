<<<<<<< HEAD
# Template Usage Guide
## Creating a New Project

=======

# Template Usage Guide
## Creating a New Project
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
```bash
# Using GitHub CLI
gh repo create my-new-project --template yourusername/universal-project-template

# Or manually
git clone https://github.com/yourusername/universal-project-template my-new-project
cd my-new-project
rm -rf .git
git init
git add .
<<<<<<< HEAD
git commit -m "Initial commit"

```

=======
git commit -m "Initial commit" ```
>>>>>>> 113e6a7a21a17117131e478fd263c717a4792536
## Customizing for Your Project
 - **Update README.md** - Change project name and description
 - **Update CODEOWNERS** - Replace @YOUR_USERNAME with actual maintainers
 - **Add your code** to src/ directory
 - **Update scripts** if you need custom build steps

## Available Commands
 - ./scripts/setup.sh - Setup development environment
 - ./scripts/test.sh - Run tests
 - ./scripts/lint.sh - Lint code
 - ./scripts/dev.sh - Start development server
 - ./scripts/release.sh - Create new release

## CI/CD Features
 - ✅ Automatic testing on every push/PR
 - ✅ Security scanning with CodeQL
 - ✅ Automated releases when pushing to main
 - ✅ Dependabot for dependency updates
