# todo_list

A new Flutter project.

## Getting Started


#### Fuctionalities of the Todoey:
- Add a task 
- Mark a task as completed
- Delete a task

##### Added 3 tasks- 
on clicking on the Floating Action Button(fab) in the bottom right corner
a BottomSheet comes up as a Modal 
Now user can't interact with the rest of the app
Here, user can start typing immediately, without the need to place the cursor on the textbox
       ```
       TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              taskText = newText;
            },
        ```
 ![todo1](https://user-images.githubusercontent.com/72871727/166229708-0dc73580-cd36-4448-95e1-273cc89d79b3.jpg)</br>
##### 2 tasks are marked as completed
![todo2](https://user-images.githubusercontent.com/72871727/166229710-6db5a0ba-97df-49e0-a832-3db43039ee79.jpg)</br>
![todo3](https://user-images.githubusercontent.com/72871727/166229703-0fffae36-56d7-40c6-ae6f-ac06112fa7c6.jpg)</br>
