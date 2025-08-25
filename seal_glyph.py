from datetime import datetime

class ValidatorSeal:
    def __init__(self, glyph_name, glyph_id, validator="CM669"):
        self.glyph_name = glyph_name
        self.glyph_id = glyph_id
        self.validator = validator
        self.timestamp = datetime.utcnow().isoformat()

    def generate_seal(self):
        return f"[===| {self.glyph_name}-{self.glyph_id}-{self.validator} |===]"

    def manifest(self):
        return {
            "seal": self.generate_seal(),
            "glyph": self.glyph_name,
            "id": self.glyph_id,
            "validator": self.validator,
            "timestamp": self.timestamp
        }

# Example usage
if __name__ == "__main__":
    glyphs = [
        ("Aurelia aurita", "JF01"),
        ("Watasenia scintillans", "FS02"),
        ("Mycena chlorophos", "MF03"),
        ("Panellus stipticus", "DF04")
    ]

    for name, gid in glyphs:
        seal = ValidatorSeal(name, gid)
        print(seal. Manifest())
