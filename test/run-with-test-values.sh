mkdir out
cd ..
helm template testapp . --namespace default --debug -f test/with-default-values.yaml >test/out/with-default.yaml
