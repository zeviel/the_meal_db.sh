#!/bin/bash

api_key="1"
api_url="https://www.themealdb.com/api/json/v1/$api_key"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function set_api_key() {
    # 1 - api_key: (string): <api_key>
    api_key=$1
}

function search_meal_by_name() {
    # 1 - name: (string): <meal name>
    curl --request GET \
        --url "$api_url/search.php?s=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function list_all_meals_by_first_letter() {
    # 1 - letter: (string): <first letter of meal name>
    curl --request GET \
        --url "$api_url/search.php?f=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function lookup_full_meal_details_by_id() {
    # 1 - id: (integer): <meal id>
    curl --request GET \
        --url "$api_url/lookup.php?i=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function lookup_single_random_meal() {
    curl --request GET \
        --url "$api_url/random.php" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function list_all_meal_categories() {
    curl --request GET \
        --url "$api_url/categories.php" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function list_all_categories() {
    curl --request GET \
        --url "$api_url/list.php?c=list" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function list_all_areas() {
    curl --request GET \
        --url "$api_url/list.php?a=list" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function list_all_ingredients() {
    curl --request GET \
        --url "$api_url/list.php?i=list" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function filter_by_main_ingredient() {
    # 1 - ingredient: (string): <main ingredient>
    curl --request GET \
        --url "$api_url/filter.php?i=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function filter_by_category() {
    # 1 - category: (string): <category name>
    curl --request GET \
        --url "$api_url/filter.php?c=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function filter_by_area() {
    # 1 - area: (string): <area name>
    curl --request GET \
        --url "$api_url/filter.php?a=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
