helm install kyverno kyverno/kyverno \
    --create-namespace \
    --namespace kyverno \
    --values helm-values.yml

helm install kyverno-policies kyverno/kyverno-policies \
    --create-namespace \
    --namespace kyverno

helm install policy-reporter policy-reporter/policy-reporter \
    --create-namespace \
    --namespace policy-reporter \
    --set kyvernoPlugin.enabled=true \
    --set ui.enabled=true \
    --set ui.plugins.kyverno=true
