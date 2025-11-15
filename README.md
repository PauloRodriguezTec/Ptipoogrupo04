# 🎓 Sistema de Gestão Escolar

> Um sistema completo de gestão de dados universitários desenvolvido como projeto integrador no 3º semestre de Análise e Desenvolvimento de Sistemas

## 📋 Sobre o Projeto

Sistema moderno de cadastro e gestão de **alunos**, **professores**, **disciplinas** e **fornecedores** de uma universidade. Desenvolvido no **SENAC** como parte da disciplina de **Projeto Integrador**, combinando boas práticas de engenharia de software com interface intuitiva e responsiva.

### ✨ Funcionalidades Principais

- 👥 **Gestão de Alunos** - Cadastro, visualização e remoção de alunos
- 👨‍🏫 **Gestão de Professores** - Registro de professores e atribuição de disciplinas
- 📚 **Gestão de Disciplinas** - Criação e gerenciamento de disciplinas
- 📝 **Matrículas** - Matricular alunos em disciplinas
- 📊 **Notas** - Lançamento e gestão de notas por disciplina
- 🏢 **Contratos** - Gestão de fornecedores e contratos

---

## 📁 Estrutura do Projeto

```
Ptipoogrupo04/
├── 📄 README.md                    # Este arquivo
├── 📁 Protótipos da Interface/     # Frontend - React + TypeScript
│   ├── src/
│   │   ├── components/             # Componentes React
│   │   ├── contexts/               # Context API para estado global
│   │   ├── types/                  # Definições de tipos
│   │   ├── utils/                  # Utilitários
│   │   ├── styles/                 # Estilos CSS
│   │   └── App.tsx                 # Componente principal
│   ├── package.json
│   └── vite.config.ts
├── 📁 diagrams_phase1/             # UML e diagramas
│   ├── Diagrama de Casos de Uso
│   └── Diagrama de Classes
├── 📁 sql/                         # Banco de dados
│   ├── create_tables.sql           # Criação das tabelas
│   └── queries.sql                 # Queries principais
└── 📁 docs/                        # Documentação
    └── Fluxos de usuário completos
```

---

## 🚀 Tecnologias Utilizadas

### Frontend
- **React 18** - Library para UI
- **TypeScript** - Type safety
- **Vite** - Build tool moderno e rápido
- **Tailwind CSS** - Estilização utilitária
- **Radix UI** - Componentes acessíveis
- **React Hook Form** - Gestão de formulários
- **Recharts** - Visualização de gráficos
- **Lucide React** - Ícones vetoriais

### Design System
- Componentes UI reutilizáveis em `src/components/ui/`
- Sistema de temas com `next-themes`
- Validação integrada com `input-otp` e `cmdk`

---

## 🛠️ Como Executar

### Pré-requisitos
- Node.js 18+
- npm ou yarn

### Instalação e Desenvolvimento

```bash
# Navegar para o diretório do frontend
cd "Protótipos da Interface"

# Instalar dependências
npm install

# Executar em modo desenvolvimento
npm run dev

# Build para produção
npm run build
```

A aplicação estará disponível em `http://localhost:5173`

---

## 📊 Banco de Dados

O banco de dados foi estruturado com base na documentação da Fase 1 do projeto.

### Principais tabelas:
- **Alunos** - Dados dos alunos
- **Professores** - Dados dos professores
- **Disciplinas** - Disciplinas oferecidas
- **Matrículas** - Registro de alunos em disciplinas
- **Notas** - Notas dos alunos
- **PessoasJurídicas** - Fornecedores
- **Contratos** - Contratos com fornecedores

Veja `sql/create_tables.sql` para detalhes completos.

---

## 📖 Documentação

- **Diagramas UML**: Consulte `diagrams_phase1/` para diagramas de casos de uso e classes
- **Fluxos de Usuário**: Verifique `docs/` para jornadas completas do usuário
- **Componentes**: Cada componente React inclui JSDoc completo

---

## 👥 Equipe

Desenvolvido como projeto em grupo no **3º semestre** da disciplina de **Análise e Desenvolvimento de Sistemas** - **SENAC**

---

## 📝 Notas

- A interface foi prototipada com Figma e implementada em React
- O projeto segue padrões de componentes e reutilização de código
- Validação de dados integrada em formulários
- Sistema responsivo para múltiplos dispositivos
