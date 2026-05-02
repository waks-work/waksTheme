# 🚀 Quick Start Guide - Universal Project Template

## ⏱️ 3-Step Project Creation

### **Step 1: Create from Template (10 seconds)**
```bash
# Using GitHub CLI (recommended)
gh repo create my-new-project --template yourusername/universal-project-template --public

# Or manually
git clone https://github.com/yourusername/universal-project-template my-new-project
cd my-new-project
```

### **Step 2: Basic Setup (30 seconds)**
```bash
# Remove template git history and start fresh
rm -rf .git
git init

# Update basic project info
echo "# My Awesome Project" > README.md

# Update LICENSE with your name
sed -i 's/\[Your Name\]/Your Name/g' LICENSE

# Update CODEOWNERS with your username
sed -i 's/@YOUR_USERNAME/@yourusername/g' .github/CODEOWNERS

# Make scripts executable
chmod +x scripts/*.sh
```

### **Step 3: Start Developing (Immediately)**
```bash
# Detect what kind of project you're building
./scripts/detect-stack.sh

# Setup development environment
./scripts/setup.sh

# Start coding!
code .  # Or nvim .
```

## 🎯 Project-Specific Examples

### **For Rust Projects (waksAI backend):**
```bash
gh repo create waksai-backend --template yourusername/universal-project-template
cd waksai-backend
echo "# waksAI Backend - AI-Powered Code Editor" > README.md
cargo init --name waksai-backend
```

### **For C/C++ Projects (MiniOS):**
```bash
gh repo create minios --template yourusername/universal-project-template  
cd minios
echo "# MiniOS - Educational Operating System" > README.md
mkdir -p src/{boot,kernel,drivers}
touch CMakeLists.txt Makefile
```

### **For TypeScript Projects (Web frontend):**
```bash
gh repo create my-app-frontend --template yourusername/universal-project-template
cd my-app-frontend
echo "# My App Frontend" > README.md
npm init -y
npm install typescript @types/node
```

### **For Cross-Language Projects (Game Engine):**
```bash
gh repo create vibe-engine --template yourusername/universal-project-template
cd vibe-engine
echo "# Vibe Engine - Cross-language Game Engine" > README.md
touch Cargo.toml CMakeLists.txt
mkdir -p src/{cpp-engine,rust-gameplay}
```

## 📋 First 10 Minutes Checklist

- [ ] **Project created** from template
- [ ] **README.md** updated with project name
- [ ] **LICENSE** updated with your name
- [ ] **CODEOWNERS** updated with your username
- [ ] **scripts/setup.sh** run successfully
- [ ] **Basic folder structure** created
- [ ] **Initial commit** made: `git add . && git commit -m "Initial commit"`
- [ ] **Remote repository** connected: `git remote add origin https://github.com/yourusername/project-name.git`

## 🔄 Standard Development Workflow

**Every time you work on a project:**
```bash
# 1. Setup (first time only)
./scripts/setup.sh

# 2. Detect project type
./scripts/detect-stack.sh

# 3. Start development
./scripts/dev.sh

# 4. Test when ready
./scripts/test.sh

# 5. Lint before committing
./scripts/lint.sh
```

## 🛠️ Available Commands

| Command | Purpose |
|---------|---------|
| `./scripts/setup.sh` | Setup development environment |
| `./scripts/detect-stack.sh` | Detect project type and stack |
| `./scripts/test.sh` | Run all tests |
| `./scripts/lint.sh` | Lint and format code |
| `./scripts/dev.sh` | Start development server |
| `./scripts/release.sh` | Create new release |
| `./scripts/verify.sh` | Verify template setup |

## 🎉 What You Get Automatically

- ✅ **CI/CD pipeline** - Tests run on every push/PR
- ✅ **Code quality** - Automatic linting and formatting
- ✅ **Security scanning** - CodeQL security analysis
- ✅ **Issue templates** - Standardized bug reports and feature requests
- ✅ **PR templates** - Consistent pull request process
- ✅ **Automated releases** - Tag-based releases
- ✅ **Dependency updates** - Weekly security updates

## 💡 Pro Tips

### **Track Your Projects**
Create a `projects.md` file to track everything:
```markdown
# My Projects

## Active
- **waksAI** - AI code editor (Rust + Lua + TS)
- **MiniOS** - Educational OS (C/C++) 
- **Vibe Engine** - Game engine (C++ + Rust)

## Planned
- Arch-based distro
- Ad blocking system  
- Real-time chat app
```

### **Language-Specific Setup**
The template automatically detects and sets up:
- 🦀 **Rust**: Cargo, rustfmt, clippy
- 🔧 **C/C++**: CMake, Make, build system
- 🌐 **TypeScript**: Node.js, npm, ESLint
- 🐍 **Python**: pip, virtual environment
- 🧩 **Lua**: LuaRocks, linting

### **Cross-Language Projects**
For mixed-language projects, the template:
- Detects multiple language configurations
- Sets up appropriate build systems
- Configures cross-language testing
- Manages dependencies for all languages

## 🚀 You're Ready!

**That's it!** You now have a **repeatable, scalable system** for starting projects. No more setup overhead - just pure development from minute one!

---

*Template created for Waks development stack: Rust, C/C++, TypeScript, Python, Lua*
