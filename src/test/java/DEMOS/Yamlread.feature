Feature: Yaml

  Background: Load Yaml
    * def expectedYaml = karate.read("file:src/test/java/DEMOS/data.yaml")

  Scenario: Match Yaml
    * text actualYaml =
            """
            name: Amir
            input:
                id: 1
                subType:
                name: Raj
                deleted: false
            """
    * yaml expectedYaml = expectedYaml
    * yaml actualYaml = actualYaml
    * match  expectedYaml ==
        """
            {
                name: 'Amir',
                input: {
                id: 1,
                subType: { name: 'Raj', deleted: false }
                }
            }
        """
