## Documentação da API

### Consultar Áreas Contaminadas

Retorna todas as áreas contaminadas localizadas dentro de um raio especificado a partir da localização geográfica informada pelo usuário.

| Método | Endpoint |
|--------|----------|
| **GET** | `/v1/contaminated-areas-nearby/` |

---

### Corpo da Requisição

A requisição deve ser enviada no formato **JSON**.

| Campo | Tipo | Obrigatório | Descrição |
|--------|------|-------------|-----------|
| `latitudeUser` | Double | Sim | Latitude da localização do usuário. |
| `longitudeUser` | Double | Sim | Longitude da localização do usuário. |
| `distanceRadius` | Double | Sim | Raio máximo de busca em quilômetros. |

#### Exemplo

```json
{
    "latitudeUser": -23.962601,
    "longitudeUser": -46.390181,
    "distanceRadius": 0.5
}
```

---

### Resposta

#### HTTP 200 - OK

A requisição foi processada com sucesso.

A resposta consiste em uma lista de áreas contaminadas encontradas dentro do raio informado.

| Campo | Tipo | Descrição |
|--------|------|-----------|
| `id` | Integer | Identificador da área contaminada. |
| `nis` | Integer | Número de identificação da área. |
| `classification` | String | Classificação oficial da área segundo a CETESB. |
| `companyName` | String | Razão social do responsável pela área. |
| `address` | String | Endereço da área contaminada. |
| `latitude` | Double | Latitude da área. |
| `longitude` | Double | Longitude da área. |
| `distanceUser` | Double | Distância entre o usuário e a área contaminada (km). |
| `contaminants` | Array | Lista de contaminantes identificados. |
| `interventionMeasures` | Array | Lista de medidas de intervenção aplicadas. |
| `precautionMeasures` | Array | Lista de medidas de precaução recomendadas. |

#### Estrutura do objeto Contaminante

| Campo | Tipo | Descrição |
|--------|------|-----------|
| `id` | Integer | Identificador do contaminante. |
| `name` | String | Nome do contaminante. |
| `type` | String | Categoria do contaminante. |
| `description` | String | Descrição dos riscos associados ao contaminante. |

#### Estrutura do objeto Medida de Intervenção

| Campo | Tipo | Descrição |
|--------|------|-----------|
| `id` | Integer | Identificador da medida. |
| `name` | String | Nome da medida de intervenção. |
| `category` | String | Categoria da medida. |
| `description` | String | Descrição da ação realizada. |

#### Estrutura do objeto Medida de Precaução

| Campo | Tipo | Descrição |
|--------|------|-----------|
| `id` | Integer | Identificador da medida. |
| `name` | String | Nome da recomendação. |
| `category` | String | Categoria da medida. |
| `description` | String | Descrição da recomendação. |

---

### Exemplo de Resposta

```json
[
  {
    "id": 9,
    "nis": 1766,
    "classification": "Área Contaminada em Processo de Remediação (ACRe)",
    "companyName": "SAINT-GOBAIN DO BRASIL PRODUTOS INDUSTRIAIS E PARA CONSTRUÇÃO LTDA.",
    "address": "RUA FREI GASPAR, 1248",
    "latitude": -23.96260118,
    "longitude": -46.39018099,
    "distanceUser": 0.0,
    "contaminants": [
      {
        "id": 5,
        "name": "SOLVENTES HALOGENADOS",
        "type": "Solventes",
        "description": "..."
      }
    ],
    "interventionMeasures": [
      {
        "id": 3,
        "name": "Remoção de Materiais",
        "category": "Remediação",
        "description": "..."
      }
    ],
    "precautionMeasures": [
      {
        "id": 22,
        "name": "Procurar Atendimento Médico",
        "category": "Prevenção Geral",
        "description": "..."
      }
    ]
  }
]
```

---

### Códigos de Resposta

| Código | Descrição |
|---------|-----------|
| **200 OK** | Consulta realizada com sucesso. |
| **400 Bad Request** | Erro ao processar a requisição. |

#### Exemplo de resposta (400)

```json
{
    "message": "Ocorreu um erro interno ao buscar áreas contaminadas perto de você."
}
```

---