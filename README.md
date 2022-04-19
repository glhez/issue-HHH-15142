# Reproducer for Eclipse JDT / Debug 579535

1. Clone this GIT repository or download a ZIP of the `main` branch
2. Download maven artifacts:

```bash
./mvnw dependency:copy-dependencies -Dclassifier=sources -DoutputDirectory=lib/sources
./mvnw dependency:copy-dependencies                      -DoutputDirectory=lib/binaries
```
3. Import project as **Java Project** (not "*Maven Project*") in Eclipse
4. Import launch `JPAUnitTestCase.launch`
5. Look up class `QueryParameterBindingValidator`
6. Put a breakpoint near line 53/54 in the `throw new IllegalArgumentException` part

**Note:** the problem is __NOT__ the IllegalArgumentException or the Hibernate bug. The problem is the breadcumb and debugger __NOT__ showing any variables/class name.






# ~~Reproducer for HHH-15142~~

~~The call to entityManager.createQuery(criteriaQuery) fails when executed more then once for a CriteriaQuery containing a Like-predicate with a pattern parameter and an escape character literal. With an escape character parameter the problem does not exist.~~

~~See: https://hibernate.atlassian.net/browse/HHH-15142~~
