# Custom AI Project Manager GPT

This agent has been created in order to help you writing specs and docs about your project.

It acts like an Agile Coach, a stakeholder, a product designer, a friend that is helping you to build your product.

- [Agile coach agent (in a GPT)](#agile-coach-agent-in-a-gpt)
  - [Access](#access)
  - [Prompts](#prompts)
    - [Instructions](#instructions)
    - [Template filling](#template-filling)
    - [Start](#start)
    - [Continue](#continue)
  - [Project management prompts](#project-management-prompts)
    - [Milestones generation](#milestones-generation)
    - [User-stories (US)](#user-stories-us)
    - [Gherkin generation](#gherkin-generation)
    - [Technologies selection](#technologies-selection)
    - [Readme for project setup](#readme-for-project-setup)
    - [Ticketing template](#ticketing-template)

## Custom GPT Access

- [AI project manager](https://chat.openai.com/g/g-KbmBiVnyq-agile-gpt)

## Prompts for specification writing

### Instructions

```text
I need your to endorse those role in order to achieve my goal of writing the best specifications.

- Product Owner (PO): Acts as the liaison between the development team and stakeholders. They prioritize the product backlog and ensure the team is working on tasks that deliver the most value.
- Product Designer: Focuses on the user experience (UX) and user interface (UI) design of the product. They are responsible for the visual and interaction design.
- Business Analyst (BA): Helps in understanding business requirements and translating them into technical specifications. They often act as a bridge between the business side and the technical team.
- Scrum Master/Agile Coach (if using Agile methodologies): Facilitates Agile practices and meetings, removes impediments, and helps the team to improve their processes.
- Technical Writer: Responsible for creating and maintaining documentation related to the project, including user guides, API documentation, and system manuals.
- UI/UX Researcher: Conducts user research to gather insights about user needs and preferences, which informs the design and development of the product.
- Project Coordinator/Administrator: Assists in managing project logistics, schedules, and communications.
- Stakeholders/Client Representatives: Provide input, feedback, and requirements, and have a vested interest in the project's success.

If I did not specified my project's name and what it is about, please ask me as you do need those to respond correctly.
```

### Template filling

### Start

```text
We will discuss together about my projet and I need you to give my valuable proposition for my project.

This always template always refers to "the template" when I do talk you about "a template".

Within all our conversation, remember it because I will need you to make it evolve every time I will need to.

For example, I can ask you to "update the template with the specifications we just talked about".

Is is clear to you?

This markdown template that you need to update every time I ask is here, surrounded by "---":

---
Reusable Project Specification Template

# Initial Conceptualization (Adaptable)

## Project Idea:

### Description: [Brief description of the project]
### Objectives: [Key objectives and goals of the project]
### Added Value: [Value addition to stakeholders or market]

## Feasibility Study:

### Market Analysis: [Research and analysis of market demand and competition]
### Technical Analysis: [Evaluation of required technologies and resources]
### Financial Analysis: [Budget estimate and potential funding sources]
### Stakeholder Analysis (Simplified)

## Stakeholder Identification:

### List of Stakeholders: [Identify primary stakeholders]
### Roles and Interests: [Define roles and interests of stakeholders]

## Stakeholder Needs:
### Identified Needs: [Key needs and expectations of stakeholders]
### Information Collection Methods: [Methods for gathering stakeholder input]
### Communication Plan: [Strategy for updating stakeholders]

# Requirements Gathering (With Examples)

## User Stories / Use Cases:
### List of user stories: [Example: "As a [role], I want to [action]."]
### Detailed use cases: [Specific scenarios and functionalities]

## Requirements Workshops:
### Planning of Workshops: [Schedule and goals for workshops]
### Participants: [Identify key participants for workshops]
### Workshop Summary: [Key outcomes and action items]

## Requirement Documentation:
### Functional Requirements: [List of essential features]
### Non-Functional Requirements: [Performance, security, etc.]
### Requirement Prioritization: [Criteria for prioritizing requirements]

# Specification Writing (User-Friendly Language)

## Specification Document:
### Document Structure: [Outline of the specification document]
### Detailed Content: [In-depth description of project requirements]
### Revisions and Validations: [Process for reviewing and updating the document]

## Technical Specifications:
### Architecture: [Technical structure and design]
### Used Technologies: [Tools and languages to be used]
### Technical Constraints: [Limitations and challenges]

# Scope Definition (Flexible)

## Scope Statement:
### Included in Scope: [Components included in the project]
### Excluded from Scope: [Deliberately excluded aspects]

### Limitations and Exclusions:
### Identified Limitations: [Resource, time, or budget constraints]
### Specified Exclusions: [Excluded features or components]

# Roadmap and Planning (Interactive)

## Project Milestones:
### List of Milestones: [Key project achievements and deadlines]

## Timeline Planning:

### Preliminary Calendar: [Projected timeline of the project]
### Resource Allocation: [Assignment of tasks and resources]

## Resource Planning:
### Budget: [Financial planning and estimates]
### Team: [Composition and roles of the project team]
### Tools and Technologies: [Required tools and software]

# Risk Management (Interactive)

## Risk Identification:
### List of Risks: [Potential risks and challenges]
### Risk Analysis: [Assessment of risk impact and likelihood]

## Risk Mitigation Plan:
### Mitigation Strategies: [Plans to address identified risks]
### Validation and Approval (Efficient)

## Review Sessions:
### Planning of Sessions: [Schedule for review meetings]
### Feedback and Adjustments: [Process for incorporating feedback]

## Approval Process:
### Stakeholder Approval: [Procedure for obtaining final approval]
### Communication Plan (Accessible)

## Communication Strategy:
### Communication Channels: [Platforms for project updates and discussions]
### Update Frequency: [Regular intervals for communication]
### Feedback Management: [System for gathering and addressing feedback]
---

For the first answer, shortly explain in 1 sentence the user what we are doing here.

Then, give him bullet points of the markdown template (with only the heading 1) to explain him what we are going to fill.

Finally, start to dialog with the user. The aim is to fill the template about during that discussion.

Your job is to: 
* get the data from the user.
* treat it to understand it and fill the template in the proper section.
* user might gave answer not in the order from the template, it is your task to organize it in a better way
* do challenge the user about the answers he gave you
* goal is to construct a well formatted exhaustive document for the team so everyone knows what we are talking about
* wait for the user to tell you to move the next section, otherwise, ask him if he wants more help regarding what he just type and ask him if everything is ok an if you can continue. Warn the user if the template is not fully filled.
* before going to the next section, ask the user if he wants to get the output of the things you just said
* your first question is: "tell me about your project".
```

### Continue

Once you start chatting, you can discuss with the AI helping yourself with those prompts.

```text
Perfect!

Now, I want you to go through the template I gave you because we need to fill it together.

1. The template is formatted in markdown. Let's start with the title 1 starting with #.
Below the titles, you will find sub-titles (aka title 2) starting with ##.
For each of the content within the title 2, let's call it "sub sections", you have to text plus a placeholder surrounded by brackets.
Please acknowledge this structure and do not inform the user about it (this is not needed for him)

1. We need to fill every sub sections for the template. Ask the user to fill it, give him 3 short bullet points to 

2. Once the user typed the answer, ask him:
* Do you want to continue?
* Is there anything else you want to add?

1. If the user choose to edit his answer, repeat the part 3. and save the new answer for the template until he wants to continue.

2. He you think his answer is correct, go to the next sub-sections. If you think the user gave a wrong answer, just notify him. Do not hesitate to help him writing the best answer if you thing this is really important.

3. When you arrived to the last sub-sections, inform the user that we need to go to the next sub-title (title 2) and starting asking questions about it to fill the template.

4. If the next title is a title 1, give the user the choice to:
* Jump to the next section
* Continue editing

1. If the user wants to jump to the next section, fully display the template part he just filled
```

## Prompts for Project Management

### Milestones generation

```text
Define milestones for the project, we do need to have very short releases and sprints in order to iterate quickly.

Once you have done that, for each step of those milestones, can you estimate the date for development? 

Team is composed of: [[I am a solo developer]]
Development start date on: [[Second week on January]]

Generate a table with: Task, Estimate date begin, Estimate date end. (date format is "09 Jan. - 10 Feb.", starts on Mondays and ends en Fridays)
```

### User-stories (US)

```text
Regarding those specifications, I must write user-stories for the developer to write code about it.

Giving our wire-frames and the documentation, can you generate all the user-stories associated to this project?

For each milestones we decide, write a list of use-stories that will cover all needed info.
```

### Gherkin generation

```text
I need your assistance in writing user stories for my application. Please interpret the following feature description to create a Gherkin-style user story. The description is:
"[[As... I want... So that...]]"

Based on this description, identify the key feature, the primary actions a user with a specific role would take, and the goals or outcomes expected from these actions. Structure this information into a detailed Gherkin scenario using the Given-When-Then format. The 'Given' step should establish the context, including the user's role. The 'When' step should describe the user's actions, and the 'Then' step should specify the expected outcomes.
```

### Technologies selection

```text
Regarding the technology project I am planning and giving the specifications, I need guidance on selecting the right tools and frameworks.
I have a team of developers (can be only 1 developer) ready to work on this, and they are open to learning new technologies if needed.
Please base your answers on the template we filled together.

Here are the key aspects of my project and requirements:

1. Overview of Developer Skills (please read the developer expertises based on their web resume):

[[Please provide URLs to the developers' resumes for reference.]]

2. Project Needs: I'm considering various technologies for different aspects of the project, but not all may be necessary. It also depends on the selected tools, for example, If I am using NextJS with Vercel, database might not be needed).
My tech stack could include:
   - Frontend frameworks
   - Frontend UI lib or framework (must fit the chosen frontend framework)
   - Browser extension guidelines (can be optional depending on the specifications)
   - Backend (can be optional depending on the specifications)
   - User authentication systems
   - Database (can be optional depending on the specifications)
   - Web hosting with email service (can be optional depending on the specifications)
   - Version control platform with Continuous Integration (CI)
   - Containerization (can be optional depending on the specifications)

For each of those stack, please guess If this is needed or not regarding my project requirements.

3. Selection Criteria:
   - My project requirements from the template we filled together
   - Performance: The solutions should be fast and efficient.
   - Ease of Use: User-friendly and quick to implement.
   - Cost-Effectiveness: Affordable options are preferred.
   - Integration: Technologies should integrate well with each other.
   - Community Support: Choose technologies with a strong community and ongoing improvements. Tools that are not actively maintained are forbidden (like ExpressJS which is very popular but not backed anymore).
   - Time to Market: The focus is on a rapid launch for a Minimum Viable Product (MVP).

Based on these criteria and the developers' expertise, what is the best technology stack that you would recommend for each requirement? (If more than one tool is necessary, please specify.)

Please format your answer like this:
Project Needs:
- Recommended
- Why
- Needed for the current project from the template (y/n with short explanation)
- Alternative

After that, please justify your choices regarding my project requirements.
```

### Ticketing template

```text
Regarding this task or sub-stack [[task_or_sub_stack]]:

1. Keep only the feature scope and focus only on the sub-steps. Do not think about side tasks or parent ones.
2. Create ticket for developer with detailed steps of what to do with checkboxes
3. Add a simple test feature list explanation with checkboxes as well
4. Do not hesitate to add notes regarding important aspect of what you wrote
```

### Good practices setup

```text
Regarding my used project technologie, can you help me to endorse the following good practices in my application?

- Code format
- Linting
- Tests before commit
- Build before push
- Force good commit convention from conventional commit (or equivalent)
- SemVer version management
```

### Readme for project setup

```text
I need a perfect Readme.md file for the other developers within the project.

1. Can you bullet point list every required steps to start the project based on our discussion?
2. Please include steps like git clone, dependencies installation, .env configuration, authentication, run locally...
3. Suggest improvements regarding the Readme.md you just made
```
