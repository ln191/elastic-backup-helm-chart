mkdir out
pushd ..
helm template testapp . --namespace unittest --debug -f test/with-default-values.yaml >test/out/with-default.yaml

popd