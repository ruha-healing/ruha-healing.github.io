---
title: Introducing Ruha Healing now
subtitle: Ledjdjdrn how to blog in academia using Jupyter notebooks
summary: Learnkekekeg in academia using Jupyter notebooks
authors:
- admin
tags: []
categories: []
date: "2019-02-05T00:00:00Z"
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/CpkOjOcXdUY)'
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []

# Set captions for image gallery.

---



## Introducing Ruha Healing

Hey this is my new website...
[Hier her](https://www.spiegel) which includes Python 3 and Jupyter notebook.

- eine Sache
- zweite Sache
- Dritte Sache

Otherwise, for advanced users, install Jupyter notebook with `pip3 install jupyter`.

## Create a new blog post [as usual](https://sourcethemes.com/academic/docs/managing-content/#create-a-blog-post)

Run the following commands in your Terminal, substituting `<MY_WEBSITE_FOLDER>` and `my-post` with the file path to your academia website folder and a name for your blog post (without spaces), respectively:  

```bash
cd <MY_WEBSITE_FOLDER>
hugo new  --kind post post/my-post
cd <MY_WEBSITE_FOLDER>/content/post/my-post/
```

## Create or upload a Jupyter notebook

Run the following command to start Jupyter within your new blog post folder. Then create a new Jupyter notebook (*New > Python Notebook*) or upload a notebook.

```bash
jupyter notebook
```

## Convert notebook to Markdown

```bash
jupyter nbconvert Untitled.ipynb --to markdown --NbConvertApp.output_files_dir=.

# Copy the contents of Untitled.md and append it to index.md:
cat Untitled.md | tee -a index.md

# Remove the temporary file:
rm Untitled.md
```

## Edit your post metadata

Open `index.md` in your text editor and edit the title etc. in the [front matter](https://sourcethemes.com/academic/docs/front-matter/) according to your preference.

To set a [featured image](https://sourcethemes.com/academic/docs/managing-content/#featured-image), place an image named `featured` into your post's folder.

For other tips, such as using math, see the guide on [writing content with academia](https://sourcethemes.com/academic/docs/writing-markdown-latex/). 
