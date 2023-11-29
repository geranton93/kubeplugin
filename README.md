### kubeplugin Usage Instructions

1. **Download the plugin:**

   Copy the `kubeplugin` file to your working directory or any directory that is part of your executable path.

   ```bash
   cp kubeplugin /your/directory
   ```

2. **Grant execution permissions:**

   Ensure that the `kubeplugin` file has execution permissions.

   ```bash
   chmod +x /your/directory/kubeplugin
   ```

3. **Using the plugin:**

   Utilize the `kubeplugin` plugin by passing the namespace as an argument.

   ```bash
   /your/directory/kubeplugin <namespace>
   ```

   For example, to retrieve statistics from the kube-system namespace:

   ```bash
   /your/directory/kubeplugin kube-system
   ```

4. **Reviewing the results:**

   The results are displayed in the format "Resource, Namespace, Name, CPU, Memory". Note that the resource name is "pod" as we are specifically selecting data about PODs.

   Example output:

   ```bash
   Resource, Namespace, Name, CPU, Memory
   pod, kube-system, pod-name-1, 100m, 50Mi
   pod, kube-system, pod-name-2, 150m, 70Mi
   ```

5. **Ending the operation:**

   After obtaining the necessary information, you can terminate the execution of the plugin.

   ```bash
   # Press Ctrl + C or simply close the terminal window.
   ```

6. **Important:**

   Ensure that kubectl is installed and configured correctly, and you have the necessary permissions to access the Kubernetes cluster and the specified namespace.

Now you should be ready to use the `kubeplugin` plugin to retrieve statistics from your Kubernetes cluster.
