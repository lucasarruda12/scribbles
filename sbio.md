# SEMINARIOS EM BIOINFORMATICA
---

# (26/03) Applications of network analysis in bioinformatics

## Applications in computing

- Estimated time f arrival (ETA) prediction
    - Given a start-point and end-point, what is the expected travel time?
    - Relevant node features: road length, current speed, historical speeds
    - Use anon... [nao consegui anotar]

## Applications in biology
- Proteomics
    - Protein interaction predictin
    - Protein function prediction
    - Protein structure prediction

- Drug development
- Disease diagnosis

## Convolutinal Neural Networks

- Locality
- Aggregation
- [faltou um]

---
# (09/04) Análise evolutiva do estabelecimento do sistema imunológico

- Tragetória academica
- Sistema Imune
- Imunidade inata e imunidade adaptativa
- Genes ortólogos
- Período 1: Os rimeiros eucatiotas
    - Como esses organismos se defendem
- Período 2: Origem dos animais multicelulares
- Período 3: Células especializadas

## Relatório

- Tragetória acadêmica:
    - Grad: Bacharelado em ciências biológicas
    - Experimentos para estudos de diferenças individuais
    - Mestrado: estudar o estabelicimento do dsistema imuni do ponto de vista evoutivo (bioinfo imd 2023.2)
        - Orientador: perdi

- Tema abordado: 

- Um objetivo que o palestrante almeja: Avaliar, de uo ponto de vista sistêmico, o cenário evolutivo do estabelecimento do sistema imunológico
    - Outros dois objetivos específicos

- Materiais e métodos utilizados pelo palestrante para atingir o objetivo:
    - GeneBridge: verifica a frequência dos genes de dado grupo de ortólogos, e ,através de calculos probabilisticos, infere o ultimo anestral comum entre o surgimento e o humano.
    - Foram utilizados os genes presentes em todas as vias metbólicas relacionadas ao Sistema imune no KEGG database.
    - Enriquecimento funcional
    - Pipeline: KEGG database -> Genebridge -> genes enraizados -> visualizações | enriquecimento funcional.
    - Traçado relações entre o surgimento de genes imunes e ogenes catalogados em câncer.

- Principais Conclusões: A maior parte dos genes imunes humanos do KEGG surgiram durante o período 1 (51%)
    - A grande parte dodos gnes catalogados em câncer surge no terceiro período
    - Os verteprados representam ambe um marco ela sua complexidado tecidual, caractereiada pel presençade epitélio especializados, mas também por mecanismos de reonvação ceuluar epitelial.
        - A maioria dos tipos de câncer se originam na estrutura do epitélio. 
        - O grande surgimento...

---
# (16/04) Extended Reality

- Milgrams Reality-Virtulity Continuum: Real environment -> Augmented Reality -> Augmented Virtualitity -> Virtual Environment
    - O nome de tudo isso é Extended Reality

- Virtual Reality Traingle: Imersion, Interaction & Imagination

> VR System Architeture

## Relatório

- Tragetória acadêmica:
    - Grad? Ciencia da computação pela UFRN (tcc: Haardcopter Game)
    - Mestrado: Mestre em sisemas e comptação - Linhas inteligencia computacional e computação gráfica pela UFRN
    - Doutorado: Perdi

- Tema abordado: Extended Reality

- Um objetivo que o palestrante almeja: 

- Materiais e métodos utilizados pelo palestrante para atingir o objetivo:

- Principais Conclusões:

--- 
# (23/04) Os saguis formam frases? Explorando a estrutura das sequências de vocalização de saguis com aprendizado de máquina

- Aluno: Angelo Gustavo S M M de Sales
- Orientador: Daniel Y. Takahashi

## Relatório

- Tragetória acadêmica:
    - Graduação: BTI 2020~2023, primeiro cntato na matéras de tópicos especiais em bioinfo 
    - Mestrado: Terceiro periodo do mestrado
        - Parte do laboratório etôgenesis
    - Doutorado: 

- Tema abordado: Saguis, aprendizado de máquina, biologia comportamental.

- Um objetivo que o palestrante almeja: Compreender a estrutura das squencias de vocalizacoes de saguis e Dessenvolver modelos de linguagem para prever vocalizações de saguis

- Materiais e métodos utilizados pelo palestrante para atingir o objetivo: 
    - GravaçÕes de vocalizações de 5 pares de gêmeos,até 60 dias de nascidos (60 dias de nascido pq é o período que o bixo mais aprende)
    - Utilizou o tweetNet para transcrever vocalização de saguis, gerando 3 informações: tempo de início, tempo de fim e rótulo (qual vocalização é aquela)
    - Encontrou 5 tipos de sílabas: Trill, Phee, Twitter, Mix, Cry.
    - Gerou várias sequencias de 10 sílabas a partir de todas as transcrições e dividiu as frequencias por faixa etária: 0 a 15, 16 a 30, 31 a 45, 46 a 60 dias de nascido.
    - 10 modelos de Markov, que utilizavam n sílabas para prever a n+1.

    - **Chat bot de sagui?**
    - Predição de sílaba, geração de gandes quantidades de dados e adição de características para predição de sílabas.
    - Markov de ordem 3 (por ter tido melhor desempenho no anterior)
    - RNN
    - LSTM
    - Transformers (TS)
    
- Principais Conclusões:
    - Modelos de markov de ordem 1 a 5foram os que tiveram melhor resultado: isso siginifica que em alguns casos tem dependencia da 5 vocalização com a primeira
    - A faixa etária mais nova foi a  que os modelos tiveram o pior desempenho, indicando que ainda está ocorrendo um processo de aprendizagem.
    - O melhor desempenho foi nas faixas etárias mais velhas
    - QUando o sagui começa com uma sílaba, ele tende a voltar pra ela.
    - **Mais sobre chatbot de sagui**: Predição de sílaba, modelo de markov de ordem 3 já foi suficientemente bom para a geração dass sílabas.
