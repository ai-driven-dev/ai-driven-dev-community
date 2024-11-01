# 🖥️ AI Driven Dev - "Project Management" Prompts (`:pm`)

A collection of prompts to help you manage your projects more effectively, as a solo developer or with a team.

- [✏️ Specification writing](#️-specification-writing)
  - [Start a new specification document `:pmSpecsStart`](#start-a-new-specification-document-pmspecsstart)
  - [Continue to fill the document `:pmSpecsContinue`](#continue-to-fill-the-document-pmspecscontinue)
- [🎯 Selection](#-selection)
  - [Choose a tech stack `:pmSelectionTech`](#choose-a-tech-stack-pmselectiontech)
- [⚗️ Generate](#️-generate)
  - [Milestones `:pmGenerateMilestones`](#milestones-pmgeneratemilestones)
  - [User-stories (US) `:pmGenerateUS`](#user-stories-us-pmgenerateus)
  - [Gherkin `:pmGenerateGherkin`](#gherkin-pmgenerategherkin)
- [📃 Template](#-template)
  - [Ticket `:pmTemplateTicket`](#ticket-pmtemplateticket)

## ✏️ Specification writing

### Start a new specification document `:pmSpecsStart`

**Description**:

Create a brand new specification document to help you kickstart your project.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | At the very beginning of your project.                     |
| 🔥 Hint                 | This should be modified with your own templates.           |

**Prompt**:

```text
We will discuss my project together, and I need you to provide valuable suggestions for it.

This template always refers to "the template" whenever I talk to you about "a template."

Throughout our conversation, keep this in mind, as I will need you to make updates whenever necessary.

For example, I may ask you to "update the template with the specifications we just discussed."

Is this clear to you?

This Markdown template, which you will update each time I request, is outlined here, surrounded by "---":

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

For the first answer, shortly explain in 1 sentence to the user what we are doing here.

Then, give them bullet points of the markdown template (with only the heading 1) to explain what we are going to fill.

Finally, start to dialog with the user. The aim is to fill the template during that discussion.

Your objective is to help the user build a thorough, well-organized project specification document through guided interaction. 

Follow these steps:
1. Get data from the user, filling in sections of the template where it fits best.
2. Organize user input, even if it’s provided out of order, to keep the document structured.
3. Ask clarifying questions to ensure all responses are complete and relevant.
4. Challenge answers when needed to refine details and improve quality.
5. Before moving to the next section, verify with the user that they’re ready to proceed. 
6. Let the user know if any part of the template is incomplete, and ask if they’d like to fill in missing sections.
7. After each section, offer a summary of what's been added and ask if they’d like to see it.

To begin, ask the user: "Tell me about your project."
```

### Continue to fill the document `:pmSpecsContinue`

**Description**:

Once you start chatting, you can continue the discussion to better fill the specification document.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | Where to use it, on which file etc.                        |
| ✨ Required before      | You must have started a discussion with specs before.      |
| 🔥 Hint                 | The more precise you are, the better is the AI.            |

**Prompt**:

```text
Perfect!

Now, I want you to go through the template I gave you because we need to fill it together.

1. **Template Structure**:
   - The template is formatted in Markdown. It contains main sections with titles in the format `# Title` and subsections as `## Subtitle`.
   - Each subsection includes text and a placeholder surrounded by brackets. Acknowledge this structure, but do not inform the user about it (this is not needed for them).

2. **Prompting User for Input**:
   - For each subsection, ask the user to fill it in. Provide three brief bullet points to guide their response.

3. **User Confirmation**:
   - After the user provides an answer, ask:
     * "Do you want to continue?"
     * "Is there anything else you want to add?"

4. **Handling Edits**:
   - If the user chooses to edit their answer, repeat this step and save the updated response in the template until they confirm they want to continue.

5. **Reviewing Answers**:
   - If the answer is clear and suitable, proceed to the next subsection.
   - If the answer seems unclear or incorrect, notify the user. Don’t hesitate to assist in refining the answer if necessary for quality.

6. **Transitioning Sections**:
   - When you reach the last subsection, inform the user that you’ll move to the next subtitle (##) and begin asking questions to fill it out.
   - If the next title is a main section (`# Title`), give the user the option to:
     * Jump to the next section
     * Continue editing

7. **Displaying Completed Sections**:
   - If the user wants to jump to the next section, fully display the completed portion of the template.
```

## 🎯 Selection

### Choose a tech stack `:pmSelectionTech`

**Description**:

Choose the right tech is hard, an AI can help you find the best tech stack for your project, sorting advantages and drawbacks.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | Use this prompt sooner after having done the specs.        |
| ✨ Required before      | Having written the specs.                                  |
| ✅ External files       | Upload specifications in the LLM.                          |

**Prompt**:

```text
Regarding the technology project I am planning and specifying, I need guidance on selecting the right tools and frameworks.
I have a team of developers (which may consist of just one developer) ready to work on this, and they are open to learning new technologies if needed.
Please base your answers on the template we filled out together.

Here are the key aspects of my project and requirements:

1. Overview of Developer Skills (please review the developers' expertise based on their web resumes):

[[Please provide URLs to the developers' resumes for reference.]]

2. Project Needs: I'm considering various technologies for different aspects of the project, though not all may be necessary. The needs will depend on the chosen tools. For example, if I am using Next.js with Vercel, a separate database might not be required.
My tech stack could include:
   - Frontend frameworks.
   - Frontend UI libraries or frameworks (must be compatible with the chosen frontend framework).
   - Browser extension guidelines (optional depending on specifications).
   - Backend (optional depending on specifications).
   - User authentication systems.
   - Database (optional depending on specifications).
   - Web hosting with email service (optional depending on specifications).
   - Version control platform with Continuous Integration (CI).
   - Containerization (optional depending on specifications).

Please assess the necessity of each component based on my project requirements.

3. Selection Criteria:
   - My project requirements from the template we filled out together.
   - Performance: The solutions should be fast and efficient.
   - Ease of Use: User-friendly and quick to implement.
   - Cost-Effectiveness: Affordable options are preferred.
   - Integration: Technologies should work well together.
   - Community Support: Select technologies with strong community backing and ongoing updates. Avoid tools that are not actively maintained (e.g., Express.js, which is popular but no longer backed).
   - Time to Market: Focus on a rapid launch for a Minimum Viable Product (MVP).

Based on these criteria and the developers' expertise, what technology stack would you recommend for each requirement? (If more than one tool is necessary, please specify.)

Please format your answer like this (surrounded by "---" delimiters):
---
Project Needs:
- Recommended Technology.
- Rationale.
- Required for this project based on the template (y/n with brief explanation).
- Alternative Option.
---

Afterward, please justify your choices in relation to my project requirements.
```

## ⚗️ Generate

### Milestones `:pmGenerateMilestones`

**Description**:

Generate the milestones for your project.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | When you need to create the main milestones of your project. |
| ✨ Required before      | Having written the specs.                                  |
| ✅ External files       | Upload specifications in the LLM.                          |

**Prompt**:

```text
Define the key milestones for the project; we aim for short release cycles and sprints to support quick iteration.

Once milestones are defined, estimate the development timeline for each one.

Team composition:
[[Bullet point list of team members]]

Development is scheduled to start in the "[[Second week of January]]".

Please generate a table with the following columns: Task, Estimated Start Date, Estimated End Date. Use the date format "09 Jan. - 10 Feb.," starting each milestone on a Monday and ending on a Friday.
```

### User-stories (US) `:pmGenerateUS`

**Description**:

Generate a list of user-stories based on the project specifications.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | US can be generated at any points.                         |
| ✨ Required before      | Having written the specs.                                  |
| ✅ External files       | Upload specifications in the LLM.                          |
| ⚠️ Warning               | Specifications must be up-to-date to generate best results. |

**Prompt**:

```text
Based on these specifications, I need user stories for the developer to follow when implementing the code.

Using our wireframes and documentation, please generate a comprehensive list of user stories for this project.

For each milestone we define, create a set of user stories that will capture all essential details.
```

### Gherkin `:pmGenerateGherkin`

**Description**:

Generate a Gherkin-style user story based on a feature description.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT Agile Coach](../llm-instructions/gpt-agile-coach.md) |
| 🔍 **Context**          | When you want a Gherkin US to attach to some tests.        |
| ✨ Required before      | A list of defined user-stories.                            |

**Prompt**:

```text
Please interpret the following feature description to create a Gherkin-style user story.

The description is: "[[As... I want... So that...]]"

- Based on this description, identify the key feature, the primary actions a user with a specific role would take, and the goals or outcomes expected from these actions.
- Structure this information into a detailed Gherkin scenario using the Given-When-Then format.
  - The 'Given' step should establish the context, including the user's role.
  - The 'When' step should describe the user's actions.
  - The 'Then' step should specify the expected outcomes.
```

## 📃 Template

### Ticket `:pmTemplateTicket`

**Description**:

A simple ticket template generation from your project's task.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT Agile Coach](../llm-instructions/gpt-agile-coach.md) |
| 🔍 **Context**          | Helping you to generate ticket for developers.             |
| ✨ Required before      | Having a list of tasks to use.                             |
| ✅ External files       | Upload specifications in the LLM.                          |

**Prompt**:

```text
Regarding this task or sub-stack "[[task_or_sub_stack]]".

Create ticket for developer with detailed steps of what to do with checkboxes:

Rules:
- Keep only the feature scope and focus only on the sub-steps, do not think about side tasks or parent ones.
- Add a simple test feature list explanation with checkboxes as well.
- Do not hesitate to add notes regarding important aspect of what you wrote.
```
