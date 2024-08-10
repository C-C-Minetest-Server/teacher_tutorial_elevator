-- teacher_tutorial_elevator/init.lua
-- Tutorial for Realtime Elevator
-- Copyright (C) 2024  1F616EMO
-- SPDX-License-Identifier: LGPL-3.0-or-later

local S = minetest.get_translator("teacher_tutorial_elevator")

teacher.register_turorial("teacher_tutorial_elevator:use_elevator", {
    title = S("Using the Elevator..."),
    show_on_unlock = true,
    triggers = {
        {
            name = "approach_node",
            nodenames = { "elevator:elevator", "elevator:elevator_on", "elevator:elevator_off" },
        }
    },

    {
        texture = "teacher_tutorial_elevator_teacher_1.jpg",
        text =
            S("Elevators transport players vertically. To use an elevator, walk inside an elevator and right-click it."),
    },
    {
        texture = "teacher_tutorial_elevator_teacher_2.jpg",
        text =
            S("After right-clicking, select a destination from the list of locations. " ..
                "The number left of the name is the Y-axis coordinate of the destination."),
    },
    {
        texture = "teacher_tutorial_elevator_teacher_3.jpg",
        text =
            S("To set up elevators, place down elevators so they are vertically aligned. " ..
                "Then, place shafts to fill in any gaps between elevators. " ..
                "Finally, place down a motor on top of the uppermost elevator.")
    }
})
