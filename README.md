# Dropdown Automation Testing with Robot Framework  

This project demonstrates how to automate dropdown testing for a web application using the **Selenium library** with **Robot Framework** in Python.  

---

## 📂 Project Overview  

The project includes two distinct approaches to automate dropdown testing:  

1. **Hardcoded Testing (`Dropdown.robot`)**  
   - Contains tests written without the use of keywords or resource files.  
   - Serves as an example of how tests can become repetitive and harder to maintain when not modularized.  

2. **Keyword-Driven Testing (`DropdownTest.robot`)**  
   - Uses a resource file (`DropdownTest.resource`) to organize reusable keywords.  
   - Demonstrates the "right way" to write maintainable and scalable Robot Framework tests.  

---

## 🎯 Purpose  

The goal of this project is to show:  
- How to transition from a hardcoded Robot Framework test to a **keyword-driven** approach.  
- The benefits of using resource files for reusable components.  

---

## 🚀 How to Run  

1. Install dependencies using:  
   ```bash
   pip install robotframework selenium
   ```
2. Run either of the test files:  
   ```bash
   robot Dropdown.robot
   ```
   or  
   ```bash
   robot DropdownTest.robot
   ```  

---

## 🛠️ Files  

- **`Dropdown.robot`**: Hardcoded dropdown test.  
- **`DropdownTest.robot`**: Keyword-driven dropdown test.  
- **`DropdownTest.resource`**: Resource file containing reusable keywords for the keyword-driven test.  

---

## 💡 Key Takeaways  

- **Hardcoded Testing**: Quick but inflexible. Changes are harder to implement.  
- **Keyword-Driven Testing**: Modular, scalable, and easier to maintain for larger projects.  

Feel free to use this repository as a learning resource to enhance your understanding of **Robot Framework** and **Selenium automation**. 🎉
