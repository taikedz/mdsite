# Markdown Site - a tool for building web sites in Markdown
# Copyright (C) 2017 Tai Kedzierski
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# We want to process a file that determines
#  a) a chapter
#  b) a list of sections
#  c) each specifying a file to pull from
#  d) through counting adding the chapter/section/subsection number on title items

# Example:
#
# 	chapter1.md
# 	section3.md
# 	section5.md
#
# Where the chapter1 file includes two sections
# section3 file contains two sections
# section5 file contains further sections
# and each chapter causes the generation of a new file
# (a chapter is indicated by a Level1 title

# We should also have a means of specifying anchors, and links to anchors
# Through initial processing, we retain anchors
# then in a post-processing step, we parse each output file for anchors

# We also need to be able to apply CSS classes to various titles
# so that we can define foldable items in CSS

# Finally we also need to include a HTML header item
# which allows importing as many JS files as needed

# Suggested tactic:
# Process the definition file to include all MD into one
# Break MD at each Level1 to a new file
# FIXME -- NO. We want each file to define its own hierarchy
#   to be nested under the hierachry as defined by the main description file
#   EACH file starts at Level1
#   Levels are added as the depth is known
