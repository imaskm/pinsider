I didn't use AWS environment. I have used docker hub registry to store image.

I have used minikube for K8s environment.

Docker:
    I have created a dockerfile for a hello-world node-js app on port 8080 and pushed the image to docker hub.
    To run docker image:
        docker run -d -p 8085:8080 imaskm/nodejs

Kubernetes:
    I created a deployment with a single replica for our hello-world docker image.
    A nodeport service to expose our app.

    A HorizontalPodAutoscaler to auto scale our load if limit of 50% cpu and 60% memory is crossed.
    I have kept minimum pod 7 as asked.

    For testing the application, I used load.yaml to create pods with same label as our app and ran a code to fetch every 30th fibonacci number, which in return created cpu and memory load, for testing purpose I decreased the thresold.

    I deployed metrics-server using github repo of metrics-server, this was not showing the cpu metrics, so couldn't test that. But it was showing memory metric.