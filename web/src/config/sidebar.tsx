import React from "react";
import { SidebarConfig } from "@core/types/layout";
import { FileText, Layers, Users } from "react-feather";
import { v4 } from "uuid";

export const sidebarConfig: SidebarConfig = {
    items: [
        {
            type: "page",
            icon: <Users/>,
            text: "Пациенты",
            url: "/apps/patients",
            key: v4(),
        },
        {
            type: "page",
            icon: <FileText/>,
            text: "Диагностика",
            key: v4(),
            children: [
                {
                    text: "Рак кожи",
                    url: "/apps/diagnosis/skin-cancer",
                },
                {
                    text: "Опухоли мозга",
                    url: "/apps/diagnosis/brain-tumors",
                },
                {
                    text: "Заболевания почек",
                    url: "/apps/diagnosis/kidney-diseases",
                },
            ]
        },
        {
            type: "page",
            icon: <Layers/>,
            text: "Анализы",
            url: "/apps/diagnosis/analyzes",
            key: v4(),
        },
    ],
}