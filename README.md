# get_x_state_management

A new Flutter project.

## Getting Started

# In this project the Basic GetX state Management is used :-

step 1. At first we need to create a controller class for our work.

    defining class name with extending GetxController class 
    class Class_Name extends GetxController{

      <!-- defining the variable using below syntex -->
      RxInt value = 0.obs;

      <!-- creating a function  -->
      void increment(){
        value.value++;
      }
    }

step 2. Now we have to initialize the class object the view page.

     Class_Name class_name = Get.put(Class_name());

step 3. Now we have to use the object to use the class components.

     Text(class_name.value.value.toString),
     InkWell(
        ontap: () => class_name.increment(),
        child: Icon(Icons.add),
     )

step 4. But the above step don't show the output on the screen by taping on increment for seeing that change we have to wrap the view widget with Obx

     Obx(
        (){
            return Text(class_name.value.tostring);
        }
     )

 # Some of the example are used to understand the concept of state management with Getx are:-

 1. Counter Example
 2. Slider Example
 3. Switch Example
 4. Favirate Examle
 5. Image Picker Example
 