# RESILIADATA - Banco de Dados

## Introdução
Este projeto consiste no desenvolvimento de um banco de dados para o sistema RESILIADATA, que visa auxiliar na avaliação das tecnologias utilizadas pelas empresas parceiras, bem como identificar seus colaboradores. O banco de dados inclui o cadastro de empresas parceiras, tecnologias, colaboradores e suas respectivas áreas de atuação.

## Diagrama Conceitual e Lógico
<p align="center">
  <img src="https://raw.githubusercontent.com/nayanesenhorinha/resiliadata/main/diagramaConceitual.jpg" alt="Diagrama conceitual">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/nayanesenhorinha/resiliadata/main/diagramaLogico.png" alt="Diagrama conceitual">
</p>

## Perguntas Propostas

1. **Quais são as entidades necessárias?**
   - As entidades necessárias são:
     - Empresa
     - Colaborador
     - Tecnologia
     - Empresa_Tecnologia
     - Área

2. **Quais são os principais campos e seus respectivos tipos?**
   - **Empresa:**
     - Id (INT - Chave Primária)
     - Cnpj (VARCHAR - Único)
     - Nome (VARCHAR)
     - Telefone (VARCHAR)
       
   - **Colaborador:**
     - Id_Colaborador (INT - Chave Primária)
     - Cpf (VARCHAR - Único)
     - Nome (VARCHAR)
     - Cargo (VARCHAR)
     - Id_Empresa (INT - Chave Estrangeira referenciando a tabela Empresa)
     - Id_Area (INT - Chave Estrangeira referenciando a tabela Área)
       
   - **Tecnologia:**
     - Id_Tecnologia (INT - Chave Primária)
     - Nome (VARCHAR)
     - Id_Area (INT - Chave Estrangeira referenciando a tabela Área)
       
   - **Empresa_Tecnologia:**
     - Id_EmpresaTecnologia (INT - Chave Primária)
     - Id_Empresa (INT - Chave Estrangeira referenciando a tabela Empresa)
     - Id_Tecnologia (INT - Chave Estrangeira referenciando a tabela Tecnologia)
       
   - **Área:**
     - Id_Area (INT - Chave Primária)
     - Nome (VARCHAR)

3. **Como essas entidades estão relacionadas?**
   - As entidades estão relacionadas da seguinte forma:
     - Uma Empresa pode ter vários Colaboradores e pode utilizar várias Tecnologias.
     - Um Colaborador está associado a uma Empresa e a uma Área específica.
     - Uma Tecnologia pertence a uma Área específica.
     - A tabela Empresa_Tecnologia é uma tabela de associação entre Empresa e Tecnologia, permitindo o relacionamento muitos-para-muitos entre essas entidades.
  
## Simulação de Registros
### Tabela Empresa
| Empresa | Cnpj           | Nome          | Telefone     |
|---------|----------------|---------------|--------------|
| 1       | 12345678900001 | Empresa A     | (11) 1234-5678 |
| 2       | 98765432100002 | Empresa B     | (22) 9876-5432 |

### Tabela Colaborador
| Colaborador | Cpf           | Nome          | Cargo        | Id_Empresa | Id_Area |
|-------------|---------------|---------------|--------------|------------|---------|
| 1           | 12345678901   | João Silva    | Desenvolvedor| 1          | 1       |
| 2           | 98765432101   | Maria Souza   | Analista     | 2          | 2       |

### Tabela Área
| Id_Area | Nome       |
|---------|------------|
| 1       | Webdev     |
| 2       | Dados      |

### Tabela Tecnologia
| Id_Tecnologia | Nome           | Id_Area |
|---------------|----------------|---------|
| 1             | Java           | 1       |
| 2             | Python         | 1       |

### Tabela Empresa-Tecnologia
| Empresa_Tecnologia | Id_Empresa | Id_Tecnologia |
|--------------------|------------|---------------|
| 1                  | 1          | 1             |
| 2                  | 2          | 2             |


