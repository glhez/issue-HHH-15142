== Reproducer for 579535 ==

1. Clone this GIT repository or download a ZIP of the `main` branch
2. Download maven artifacts:

```bash
./mvnw dependency:copy-dependencies -Dclassifier=sources -DoutputDirectory=lib/sources
./mvnw dependency:copy-dependencies                      -DoutputDirectory=lib/binaries
```
3. Import project as **Java Project** in Eclipse














== ~~Reproducer for HHH-15142~~

~~The call to entityManager.createQuery(criteriaQuery) fails when executed more then once for a CriteriaQuery containing a Like-predicate with a pattern parameter and an escape character literal. With an escape character parameter the problem does not exist.~~

~~See: https://hibernate.atlassian.net/browse/HHH-15142~~
