To initialize your Henkan project from git use following yaml

```yaml
apiVersion: 1.0.0
metadata:
  name: henkan-demo
projects:
  - name: henkan-demo
    source:
      type: git
      location: 'https://github.com/GlobalMaksimum/henkan-tue-2.git'
components:
  - id: globalmaksimum/henkan/latest
    type: cheEditor
```

