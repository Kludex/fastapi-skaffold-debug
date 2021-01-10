<h1 align="center">
    <strong>FastAPI Skaffold Debug - Single Pod 🐳</strong>
</h1>

Following the [FastAPI Docker Debug](https://github.com/Kludex/fastapi-docker-debug) repository, the [FastAPI Skaffold Debug - Single Pod](https://github.com/Kludex/fastapi-docker-debug) was born. 😎

We'll make use of the following tools:

* [minikube](https://minikube.sigs.k8s.io/docs/start/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* [Skaffold](https://skaffold.dev/docs/install/)
* [Docker](https://docs.docker.com/get-docker/)

So please, if you don't have them installed, feel free to do so.

## Usage

Make sure `minikube` is running.

``` bash
minikube start
```

Run `skaffold`, you can use either the `dev` or `debug` command.

``` bash
skaffold dev # or debug
```

Now you can press **F5** and the debugger will be attached to your pod.

Let's go inside the pod.

```bash
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
kubectl exec --stdin --tty $POD_NAME -- /bin/bash
```

Make a request.
```bash
curl localhost:8080
```

And 🎉! Now you're able to debug your FastAPI application that lives inside the pod. 😇

## License

This project is licensed under the terms of the MIT license.
