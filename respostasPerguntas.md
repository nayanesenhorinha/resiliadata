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
