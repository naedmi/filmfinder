import json

from translate import Translator


def translateJson(json_data, translator):
    if isinstance(json_data, dict):
        for key, value in json_data.items():
            if isinstance(value, (dict, list)):
                translateJson(value, translator)
            else:
                translation = translator.translate(value)
                json_data[key] = translation


def translater():
    for language in ['es-ES', 'fr-FR', 'it-IT', 'ja-JP']:
        with open('./assets/languages/en-US.json', 'r', encoding='UTF-8') as jsonFile:
            data = json.load(jsonFile)
            translateJson(data, translator=Translator(from_lang='en', to_lang=language.split('-')[0].lower()))
            with open(f'./assets/languages/{language}.json', 'w', encoding='UTF-8') as file:
                json.dump(data, file, indent=4)


if __name__ == '__main__':
    translater()
